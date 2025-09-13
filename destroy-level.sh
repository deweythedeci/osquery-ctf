#!/bin/bash
set -e

LEVEL=$1

if [ -z "$LEVEL" ]; then
    echo "Usage: ./destroy-level.sh <level_module_name>"
    echo "Example: ./destroy-level.sh lab0_intro"
    exit 1
fi

echo "Tearing down module: $LEVEL..."
if ! terraform destroy -target="module.${LEVEL}" -auto-approve > destroy.log 2>&1; then
  echo "Terraform destroy failed. Last 20 log lines:"
  tail -n 20 destroy.log
  exit 1
fi

echo "Level Destroyed!"