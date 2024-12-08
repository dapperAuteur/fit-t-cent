# Use a base image
FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
  curl \
  bash \
  && rm -rf /var/lib/apt/lists/*

# Set up environment variables if necessary
ENV WEAVIATE_PORT=8080
ENV OLAMA_PORT=8000
ENV VERBA_PORT=8081

# Install docker-compose (if needed)
RUN curl -L https://github.com/docker/compose/releases/download/v2.24.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Expose required ports
EXPOSE 8080 8000 8081

# Copy the startup script
COPY ./startup.sh /startup.sh

# Grant execution permissions for the script
RUN chmod +x /startup.sh

# Set the default command to run your script
CMD ["/startup.sh"]
