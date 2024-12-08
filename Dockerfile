# Use a base image to install necessary dependencies
FROM alpine:latest

# Install Docker in the Render environment for containerization
RUN apk add --no-cache docker

# Copy over the startup script
COPY ./startup.sh /startup.sh

# Grant execution permissions to the script
RUN chmod +x /startup.sh

# Set the startup script as the entrypoint
ENTRYPOINT ["/startup.sh"]
