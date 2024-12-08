#!/bin/bash

# Dynamic PORT detection from the Render environment
SERVICE_PORT=${PORT:-8080}

echo "Starting Weaviate on ${SERVICE_PORT}..."
docker run -d --name weaviate -p ${SERVICE_PORT}:8080 semitechnologies/weaviate:latest

echo "Starting Ollama on 8000..."
docker run -d --name ollama -p 8000:8000 ollama/ollama:latest

echo "Starting Verba on 8081..."
docker run -d --name verba -p 8081:8081 aweful/verba:latest

echo "Startup complete. Services running on their respective ports."

# Keep script running
tail -f /dev/null
