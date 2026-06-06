# Dockerized Frontend Website Deployment on Amazon EC2

This guide describes how to run, containerize, and deploy the "Solaris Tech Solutions" landing page onto an Amazon EC2 instance using Docker.

---

## 1. Directory Structure

```
task12/
├── index.html        # Main landing page HTML5
├── styles.css        # Responsive layouts & glowing styles
├── script.js         # Navigation triggers & form handlers
├── Dockerfile        # Nginx alpine configuration
├── deploy_ec2.sh     # AWS CLI EC2 automation deployer
└── README.md         # Documentation & command logs
```

---

## 2. Deploy Automated EC2 Instance
The script `deploy_ec2.sh` automatically queries Systems Manager (SSM) for the latest Amazon Linux 2023 AMI, creates a security group `Task12SecurityGroup` allowing HTTP (port 80) and SSH (port 22), launches a `t2.micro` EC2 instance, and bootstrap installs Docker and runs the container.

1. Ensure your local CLI is configured with credentials (`aws configure`).
2. Make `deploy_ec2.sh` executable and run it:
   ```bash
   chmod +x deploy_ec2.sh
   ./deploy_ec2.sh
   ```
3. Copy the **Public IP** returned by the script.
4. Paste `http://<EC2-PUBLIC-IP>` in your browser to view the running landing page!
   *(Note: The instance initialization and Docker container launch take approximately 1-2 minutes after the script finishes)*.

---

## 3. Manual Container Management on EC2
To manage the Docker containers manually on the EC2 server, connect using SSH:

```bash
ssh -i /path/to/my-key.pem ec2-user@<EC2-PUBLIC-IP>
```

Navigate to the application folder:
```bash
cd /home/ec2-user/app
```

### Essential Docker Administration Commands

* **List running containers**:
  ```bash
  docker ps
  ```
* **View container logs**:
  ```bash
  docker logs my-web-server
  ```
* **Stop the container**:
  ```bash
  docker stop my-web-server
  ```
* **Start the container**:
  ```bash
  docker start my-web-server
  ```
* **Restart the container**:
  ```bash
  docker restart my-web-server
  ```
* **Remove the container**:
  ```bash
  docker rm -f my-web-server
  ```
* **Rebuild image and launch (after git pull / local changes)**:
  ```bash
  docker build -t static-web .
  docker run -d -p 80:80 --name my-web-server --restart always static-web
  ```
