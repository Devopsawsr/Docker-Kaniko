# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Update packages and install httpd
RUN apt-get update && apt-get install -y apache2

# Expose port 80
EXPOSE 80

# Start the httpd service
CMD ["apache2ctl", "-D", "FOREGROUND"]
