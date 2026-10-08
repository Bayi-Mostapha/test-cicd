# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy your index.html file into Nginx's default HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80