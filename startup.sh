#!/bin/bash

# Start Weaviate on port 8080
echo "Starting Weaviate..."
docker run -d --name weaviate -p 8080:8080 semitechnologies/weaviate:latest
echo "Weaviate started on port 8080."

# Start Ollama on port 8000
echo "Starting Ollama..."
docker run -d --name ollama -p 8000:8000 ollama/ollama:latest
echo "Ollama started on port 8000."

# Start Verba on port 8081
echo "Starting Verba..."
docker run -d --name verba -p 8081:8081 aweful/verba:latest
echo "Verba started on port 8081."

# Keep the container alive
echo "All services started. Keeping container alive..."
tail -f /dev/null
