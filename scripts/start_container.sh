#!/bin/bash
set -#!/bin/bash
set -e

echo "Pulling latest Docker image..."
sudo docker pull samidha7/simple-python-flask-app

echo "Running new container..."
sudo docker run -d -p 5000:5000 samidha7/simple-python-flask-app



