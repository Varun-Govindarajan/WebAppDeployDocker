#!/bin/bash
set -e

# Stop old container if exists
sudo docker stop myapp || true
sudo docker rm myapp || true

# Build image from Dockerfile in your repo
sudo docker build -t myimage:latest .

# Run container
sudo docker run -d -p 80:80 --name myapp myimage:latest
