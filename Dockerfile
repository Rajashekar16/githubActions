# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/

# Copy the static website files to the default Nginx web root directory
COPY . /usr/share/nginx/html

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Define the default command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
