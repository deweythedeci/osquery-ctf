resource "google_compute_instance" "lab0_instance" {
  name         = "lab0-instance"
  machine_type = "e2-micro"
  zone         = var.zone
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-13"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }

  metadata = {
    startup-script = file("${path.module}/startup.sh")
  }
}