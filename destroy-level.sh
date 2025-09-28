#!/bin/bash
set -e

LEVEL=$1

if [ -z "$LEVEL" ]; then
    echo "Usage: ./destroy-level.sh <level_module_name>"
    echo "Example: ./destroy-level.sh lab0_intro"
    exit 1
fi

echo "Tearing down module: $LEVEL..."

terraform -chdir=terraform/core destroy -target="module.${LEVEL}" -auto-approve

echo "Level Destroyed!"