#!/bin/bash

# oc and oc must be installed to deploy with this script
#Get ENV variable

echo "Deploying deployment"
oc apply -f k8s/deployment.yaml
echo "Deploying service"
oc apply -f k8s/service.yaml
echo "Deploy route"
oc apply -f k8s/route.yaml