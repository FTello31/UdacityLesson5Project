#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="ferto31/api"

# Step 2:  
# Authenticate & tag
docker login -u ferto31
docker tag api $dockerpath

echo "Docker ID ferto31 and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
