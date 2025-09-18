module "setup" {
    source       = "../modules/setup"
    project_id   = var.project_id
    region       = var.region
    zone         = var.zone
    ssh_username = var.ssh_username
}

module "lab0_intro" {
    source       = "../modules/lab0_intro"
    project_id   = var.project_id
    region       = var.region
    zone         = var.zone
    ssh_username = var.ssh_username
}