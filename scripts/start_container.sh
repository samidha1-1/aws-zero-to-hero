#!/bin/bash
set -e

echo "Starting new container..."

# Pull the latest image from Docker Hub
docker pull samidha7/simple-python-flask-app:latest

# Run new container in detached mode
docker run -d -p 5000:5000 --name simple-python-flask-app samidha7/simple-python-flask-app:latest

echo "Container started successfully!"

