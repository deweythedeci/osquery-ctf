#!/bin/bash
set -e

LEVEL=$1

if [ -z "$LEVEL" ]; then
    echo "Usage: ./run-level.sh <level_module_name>"
    echo "Example: ./run-level.sh lab0_intro"
    exit 1
fi

echo "Deploying module: $LEVEL..."
terraform -chdir=terraform apply -target="module.${LEVEL}" -auto-approve > /dev/null

IP=$(terraform -chdir=terraform output -raw "${LEVEL}_ip")

ansible-playbook -i "${IP}," -u "student" --private-key ssh/id_ed25519 "ansible/${LEVEL}/playbook.yml"

echo "Level Deployed!"