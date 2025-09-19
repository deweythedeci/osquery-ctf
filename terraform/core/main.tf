module "lab0_intro" {
    source       = "../lab0_intro"
    project_id   = var.project_id
    zone         = var.zone
    ssh_username = var.ssh_username
}