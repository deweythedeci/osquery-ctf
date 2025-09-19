PROJECT_ID=$(gcloud config get-value project)
echo 'project_id = "${PROJECT_ID}"' > terraform/core/terraform.tfvars
ssh-keygen -t ed25519 -f ssh/id_ed25519 -P ""
terraform -chdir=terraform/core init