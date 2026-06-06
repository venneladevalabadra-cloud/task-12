#!/bin/bash
set -e

REGION="us-east-1"
KEY_NAME="my-key"
SG_NAME="Task12SecurityGroup"
INSTANCE_TYPE="t3.micro"
ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
BUCKET_NAME="qr-code-store-${ACCOUNT_ID}"

echo "============================================="
echo "Starting EC2 Docker Website Deployment"
echo "Region: $REGION"
echo "Key Name: $KEY_NAME"
echo "S3 Bucket: $BUCKET_NAME"
echo "============================================="

# 1. Update S3 Policy and Upload Tarball
echo "Applying updated bucket policy to allow task12 access..."
aws s3api put-bucket-policy --bucket "$BUCKET_NAME" --policy file://bucket-policy.json --region "$REGION"

echo "Packaging local static files into app.tar.gz..."
tar -czf app.tar.gz index.html styles.css script.js Dockerfile

echo "Uploading app.tar.gz to S3..."
aws s3 cp app.tar.gz "s3://$BUCKET_NAME/task12/app.tar.gz" --region "$REGION"
rm -f app.tar.gz

# 2. Query latest AL2023 AMI ID
echo "Querying latest Amazon Linux 2023 AMI..."
AMI_ID=$(aws ssm get-parameter --name /aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64 --region "$REGION" --query "Parameter.Value" --output text)
echo "Found AMI ID: $AMI_ID"

# 3. Setup Security Group
echo "Checking if Security Group exists..."
SG_ID=$(aws ec2 describe-security-groups --region "$REGION" --filters "Name=group-name,Values=$SG_NAME" --query "SecurityGroups[0].GroupId" --output text)

if [ "$SG_ID" = "None" ] || [ -z "$SG_ID" ]; then
    echo "Creating Security Group '$SG_NAME'..."
    SG_ID=$(aws ec2 create-security-group --group-name "$SG_NAME" --description "Security group for Task12 Docker Web Server" --region "$REGION" --query "GroupId" --output text)
    
    echo "Configuring inbound rules (SSH port 22 & HTTP port 80)..."
    aws ec2 authorize-security-group-ingress --group-id "$SG_ID" --protocol tcp --port 22 --cidr 0.0.0.0/0 --region "$REGION"
    aws ec2 authorize-security-group-ingress --group-id "$SG_ID" --protocol tcp --port 80 --cidr 0.0.0.0/0 --region "$REGION"
    echo "Security Group configured: $SG_ID"
else
    echo "Security Group already exists with ID: $SG_ID"
fi

# 4. Create UserData script
echo "Assembling UserData bootstrap script..."
cat << EOF > userdata.sh
#!/bin/bash
# Update system and install Docker
dnf update -y
dnf install -y docker tar curl
systemctl start docker
systemctl enable docker

# Fetch and extract application tarball
mkdir -p /home/ec2-user/app
cd /home/ec2-user/app
curl -o app.tar.gz "https://$BUCKET_NAME.s3.$REGION.amazonaws.com/task12/app.tar.gz"
tar -xzf app.tar.gz
rm -f app.tar.gz

# Build and run Docker Container
docker build -t static-web .
docker run -d -p 80:80 --name my-web-server --restart always static-web
echo "UserData completed."
EOF

echo "Launching EC2 instance using security group $SG_ID..."
INSTANCE_INFO=$(aws ec2 run-instances \
    --image-id "$AMI_ID" \
    --count 1 \
    --instance-type "$INSTANCE_TYPE" \
    --key-name "$KEY_NAME" \
    --security-group-ids "$SG_ID" \
    --user-data file://userdata.sh \
    --region "$REGION" \
    --query "Instances[0].{InstanceId:InstanceId,PublicIpAddress:PublicIpAddress}" \
    --output json)

rm userdata.sh

INSTANCE_ID=$(echo "$INSTANCE_INFO" | grep -o '"InstanceId": "[^"]*' | grep -o '[^"]*$')
echo "Launched Instance ID: $INSTANCE_ID"

echo "Waiting for instance to receive public IP..."
sleep 15

PUBLIC_IP=$(aws ec2 describe-instances --instance-ids "$INSTANCE_ID" --region "$REGION" --query "Reservations[0].Instances[0].PublicIpAddress" --output text)

echo "============================================="
echo "SUCCESS! EC2 Instance Deployed."
echo "Instance ID: $INSTANCE_ID"
echo "Public IP: $PUBLIC_IP"
echo "Access Site: http://$PUBLIC_IP"
echo "============================================="
