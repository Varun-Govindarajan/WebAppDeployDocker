#!/bin/bash
sudo docker stop myapp || true
sudo docker rm myapp || true
sudo docker run -d -p 80:80 --name myapp myimage:latest
