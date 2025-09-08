#!/bin/bash
set -e

LEVEL=$1

if [ -z "$LEVEL" ]; then
    echo "Usage: ./run-level.sh <level_module_name>"
    echo "Example: ./run-level.sh lab0_intro"
    exit 1
fi

echo "Deploying module: $LEVEL..."
if ! terraform apply -target="module.${LEVEL}" -auto-approve > apply.log 2>&1; then
  echo "Terraform apply failed. Last 20 log lines:"
  tail -n 20 apply.log
  exit 1
fi

echo "Level Deployed!"