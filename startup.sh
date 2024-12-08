#!/bin/bash
# Ensure the script is executable
echo "Starting service with environment PORT=${PORT}"

# Start Weaviate or other services here by binding to the `PORT`
your-service-command --port ${PORT}
