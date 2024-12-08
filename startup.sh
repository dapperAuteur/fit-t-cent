#!/bin/bash

# Capture Render's provided port dynamically
PORT=${PORT:-8080}

# Starting Weaviate on the port specified
echo "Starting Weaviate..."
docker run -d --name weaviate -p ${PORT}:8080 semitechnologies/weaviate:latest
echo "Weaviate started on ${PORT}."

# Starting Ollama on its own dedicated port
docker run -d --name ollama -p 8000:8000 ollama/ollama:latest
echo "Ollama started on port 8000."

# Starting Verba on its own dedicated port
docker run -d --name verba -p 8081:8081 aweful/verba:latest
echo "Verba started on port 8081."

# Keep script running
tail -f /dev/null
