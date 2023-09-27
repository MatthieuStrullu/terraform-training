resource "google_compute_instance" "default" {
  name         = "e2-matthieu"
  machine_type = "e2-micro"
  project      = "bell-lab"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    # tags = ["gcp-instance"]
    # A default network is created for all GCP projects
    network = google_compute_network.vpc_network.self_link
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  project                 = "bell-lab"
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}
