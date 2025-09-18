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
    ssh-keys = "${var.ssh_username}:${file("${path.module}/../id_ed25519.pub")}"
    startup-script = file("${path.module}/startup.sh")
  }
}