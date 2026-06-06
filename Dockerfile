FROM nginx:alpine

# Copy static website assets to Nginx default html directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx server automatically
CMD ["nginx", "-g", "daemon off;"]
