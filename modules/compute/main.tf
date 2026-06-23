resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = "e2-micro"
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network = var.network_id
    access_config {}
  }
  tags = ["sre", "terraform"]
}
