#!/bin/bash

echo "Applying ConfigMap..."
kubectl apply -f configmap.yaml

echo "Deploying the multi-container application..."
kubectl apply -f deployment.yaml

echo "Creating the Service..."
kubectl apply -f service.yaml

echo "Deployment and Service created. Checking status..."
kubectl get pods
kubectl get svc
