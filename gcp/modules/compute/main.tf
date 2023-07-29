locals {
  home_path = pathexpand("~")
}

resource "google_compute_instance" "tf_gcp_prod" {
  name         = "tf-gcp-prod"
  machine_type = "e2-medium"
  zone         = "asia-northeast1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-focal-v20230724"
    }
  }

  network_interface {
    subnetwork = var.subnetwork.id

    access_config {
      nat_ip = var.nat_ip.address
    }
  }

  service_account {
    email  = var.service_account.email
    scopes = ["cloud-platform"]
  }

  tags = ["allow-http", "allow-ssh"]

  metadata = {
    ssh-keys = "tf-gcp-prod:${file("${local.home_path}/.ssh/id_rsa.pub")}"
  }
}