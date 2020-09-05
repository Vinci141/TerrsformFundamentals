##############################################################
# GCP LAB - Terraform Fundamentals
###############################################################
# PROVIDER
###############################################################

provider "google" {
credentials = file("account.json") # It looks for account.json in current directory
project = "qwiklabs-gcp-01-2ce67ecce0e6"
}

resource "google_compute_instance" "default" {
  project      = "qwiklabs-gcp-02-7cb5752c524d"
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
