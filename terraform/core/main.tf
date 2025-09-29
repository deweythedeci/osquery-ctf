variable "zone" {
  type    = string
  default = "us-central1-a"
}

module "lab0_intro" {
    source       = "../lab0_intro"
    zone         = var.zone
}