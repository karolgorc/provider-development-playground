resource "google_compute_instance" "test" {
  name         = "test"
  machine_type = "n2d-standard-2"
  zone         = var.zone
  project      = var.project_id

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-9"
    }
  }
  network_interface {
    subnetwork = "default"
    access_config {
      // Ephemeral public IP
    }
  }
}
