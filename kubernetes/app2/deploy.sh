#!/bin/bash

echo "Deploying the app2 application..."
kubectl apply -f deployment.yaml

echo "Exposing the application with a service..."
kubectl apply -f service.yaml

echo "Verifying deployment..."
kubectl get pods
kubectl get svc
