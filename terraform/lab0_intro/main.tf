variable "zone" {
  type        = string
  description = "Zone for Compute Engine"
}

resource "google_compute_instance" "lab0_instance" {
  name         = "lab0-instance"
  machine_type = "e2-micro"
  zone         = var.zone
  
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }

  metadata = {
    user-data = <<-EOT
      packages:
        - gpg
      runcmd:
        - curl -fsSL https://pkg.osquery.io/deb/pubkey.gpg | gpg --dearmor -o /etc/apt/keyrings/osquery.gpg
        - echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/osquery.gpg] https://pkg.osquery.io/deb deb main" > /etc/apt/sources.list.d/osquery.list
        - apt-get update
        - apt-get install -y osquery
    EOT
  }
}