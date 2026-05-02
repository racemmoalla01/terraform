resource "google_storage_bucket" "my-bucket" {
  name          = "bkt-demo-000"
  location      = "us-central1"
  project = "920722724682"
  force_destroy = true
  public_access_prevention = "enforced"
  uniform_bucket_level_access = true
}

resource "google_compute_instance" "vm" {
  name ="docker-vm"
  machine_type = "e2-micro"
  project = "920722724682"
  zone = "us-central1-a"
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
