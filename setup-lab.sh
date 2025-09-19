# Get current project id
PROJECT_ID=$(gcloud config get-value project)

# Put project id into terraform.tfvars so terraform can function
echo "project_id = \"${PROJECT_ID}\"" > terraform/core/terraform.tfvars

# Generate ssh key pair for ansible to access VMs
ssh-keygen -t ed25519 -f ssh/id_ed25519 -P ""

# Initialize terraform
terraform -chdir=terraform/core init