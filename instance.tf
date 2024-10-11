resource "google_compute_instance" "terraform" {
  project      = "gcp_thomz"
  name         = "terraform"
  machine_type = "e2-medium"
  zone         = "us-central1-f"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
