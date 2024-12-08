# Base image
FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
  curl \
  bash \
  && rm -rf /var/lib/apt/lists/*

# Set environment variables for ports
ENV WEAVIATE_PORT=${PORT:-8080}
ENV OLAMA_PORT=8000
ENV VERBA_PORT=8081

# Install docker-compose
RUN curl -L https://github.com/docker/compose/releases/download/v2.24.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Expose expected ports for clarity
EXPOSE 8080 8000 8081

# Copy the startup script
COPY ./startup.sh /startup.sh

# Grant permissions for execution
RUN chmod +x /startup.sh

# Set the default start command
CMD ["/startup.sh"]
