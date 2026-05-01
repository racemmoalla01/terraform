provider "google" { 
  project = var.project_id
  region = var.region
  zone =var .zone
}

resource "google_compute_instance" "vm" {
  name ="docker-vm"
  machine_type = "e2-micro"
  zone = var.zone

  boot_disk { 
    initialize_params {
      image  = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "default"
  
    access_config{
    }
  }
 
}
