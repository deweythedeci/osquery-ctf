variable "zone" {
  type        = string
  description = "Zone for Compute Engine"
}

resource "google_compute_instance" "lab0_instance" {
  name         = "lab0-instance"
  machine_type = "e2-medium"
  zone         = var.zone
  
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2404-lts-amd64"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }

  metadata = {
    dockerfile = file("${path.module}/Dockerfile")
    user-data = file("${path.module}/../cloud-config.yaml")
  }
}