# Use the official Nginx image as the base image.
FROM nginx:1.17.6-alpine

# Copy the HTML file from the current directory on the host machine into the Docker container.
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 on the Docker container to the host machine.
EXPOSE 80

# Define the entrypoint for the Docker container.
CMD ["nginx", "-g", "daemon off;"]