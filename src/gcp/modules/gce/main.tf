resource "google_compute_address" "gce_address" {
  name = var.gce_address_name
}

resource "google_compute_instance" "gce_instance" {
  name         = var.gce_instance_name
  machine_type = var.gce_machine_type
  zone         = var.gce_zone

  boot_disk {
    initialize_params {
      image = var.gce_image
      size  = var.gce_size
    }
  }

  network_interface {
    subnetwork = data.google_compute_subnetwork.subnetwork.id

    access_config {
      nat_ip = google_compute_address.gce_address.address
    }
  }

  service_account {
    email  = data.google_service_account.sa.email
    scopes = var.gce_service_scopes
  }

  tags = var.gce_tags

  metadata = {
    ssh-keys = "${var.gce_user_name}:${base64decode(var.gce_public_key)}"
  }
}

resource "google_compute_resource_policy" "gce_resource_policy" {
  name = var.rp_name

  snapshot_schedule_policy {
    schedule {
      daily_schedule {
        days_in_cycle = var.rp_days_in_cycle
        start_time    = var.rp_start_time
      }
    }

    retention_policy {
      max_retention_days    = var.rp_max_retention_days
      on_source_disk_delete = "KEEP_AUTO_SNAPSHOTS"
    }

    snapshot_properties {
      labels = {
        purpose = var.rp_label
      }
    }
  }
}
