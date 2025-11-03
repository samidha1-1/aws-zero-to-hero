#!/bin/bash
# Start the new container
echo "Starting new container..."
sudo docker run -d -p 5000:5000 samidha7/simple-python-flask-app

