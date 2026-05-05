variable "public_ssh_key" {}

resource "google_compute_instance" "vm" {
  count        = 1
  name         = "docker-vm-${count.index}"
  machine_type = "e2-micro"
  project      = "920722724682"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    ssh-keys = "ubuntu:${var.public_ssh_key}"
  }
}
