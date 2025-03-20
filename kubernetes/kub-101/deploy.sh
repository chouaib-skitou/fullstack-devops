#!/bin/bash

# Apply the deployment YAML to create/update the deployment
kubectl apply -f deployment.yaml

# Wait a few seconds for the pods to start
sleep 5

# List the running pods
kubectl get pods

# Optionally, view logs from one of the pods (replace <pod-name> with an actual pod name)
# For example:
# POD_NAME=$(kubectl get pods -l app=hello -o jsonpath="{.items[0].metadata.name}")
# kubectl logs $POD_NAME
