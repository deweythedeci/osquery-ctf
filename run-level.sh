#!/bin/bash
set -e

LEVEL=$1

if [ -z "$LEVEL" ]; then
    echo "Usage: ./run-level.sh <level_module_name>"
    echo "Example: ./run-level.sh lab0_intro"
    exit 1
fi

echo "Deploying module: $LEVEL..."

terraform -chdir=terraform/core apply -target="module.${LEVEL}" -auto-approve

echo "Level Deployed!"

echo 'You can connect to the lab instance with `gcloud compute ssh lab?-instance -zone=us-central1=a`'