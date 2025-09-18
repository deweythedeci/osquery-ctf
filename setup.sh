pip install ansible
echo 'project_id = "$(gcloud config get-value project)"' > terraform.tfvars
mkdir ssh
ssh-keygen -t ed25519 -f ssh/id_ed25519
terraform -chdir=terraform init