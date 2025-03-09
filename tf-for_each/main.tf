variable "instances" {
  default = {
    "vm1" = "e2-medium"
    "vm2" = "e2-standard-2"
    "vm3" = "n1-standard-1"
  }
}

resource "google_compute_instance" "vm" {
  for_each = var.instances

  name         = each.key
  machine_type = each.value
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  tags = ["web", each.key]
}
