#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<yourusername>/microservices:latest
dockerpath='fairoza/microservices:latest'

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservice --image=$dockerpath --port=8002


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/microservice 8001:8002


# Get logs
kubectl logs `kubectl get pods -o=name`
