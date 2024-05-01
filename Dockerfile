# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Install Apache
RUN apt-get update && \
    apt-get install -y apache2

# Copy the website files to /var/www/html
COPY. /var/www/html

# Expose port 82
EXPOSE 82

# Start Apache
CMD ["service", "apache2", "start"]
