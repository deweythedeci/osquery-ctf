echo 'project_id = "$(gcloud config get-value project)"' > terraform.tfvars
ssh-keygen -t ed25519 -f ssh/id_ed25519 -P ""
terraform -chdir=terraform init