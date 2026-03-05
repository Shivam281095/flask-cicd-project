#!/bin/bash

echo "Pulling latest image..."
docker pull shivam281095/flask-cicd:latest

echo "Restarting Kubernetes deployment..."
kubectl rollout restart deployment flask-deployment

echo "Checking rollout status..."
kubectl rollout status deployment flask-deployment