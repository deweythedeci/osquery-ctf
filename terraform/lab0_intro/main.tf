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
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network       = "default"
    access-config = {}
  }

  metadata = {
    user-data = templatefile("${path.module}/cloud-config.yaml", {
      script_file = file("${path.module}/foo.sh")
      service_file = file("${path.module}/foo.service")
    })
  }
}