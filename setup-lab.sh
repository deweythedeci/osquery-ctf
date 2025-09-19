echo 'project_id = "$(gcloud config get-value project)"' > terraform/core/terraform.tfvars
ssh-keygen -t ed25519 -f ssh/id_ed25519 -P ""
terraform -chdir=terraform/core init