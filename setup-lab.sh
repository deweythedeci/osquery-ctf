# echo 'project_id = "$(gcloud config get-value project)"' > terraform/core/terraform.tfvars
# this line doesn't work
# regardless might be better to just change this script to be part of the setup instructions
ssh-keygen -t ed25519 -f ssh/id_ed25519 -P ""
terraform -chdir=terraform/core init