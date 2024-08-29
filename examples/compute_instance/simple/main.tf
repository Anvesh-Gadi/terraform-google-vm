# main.tf

resource "google_compute_instance" "instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    auto_delete = true
    device_name = var.instance_name

    initialize_params {
      image = var.boot_disk_image
      size  = var.boot_disk_size
      type  = var.boot_disk_type
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  network_interface {
    access_config {
      network_tier = var.network_tier
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = var.subnetwork
  }

  scheduling {
    automatic_restart   = var.automatic_restart
    on_host_maintenance = var.on_host_maintenance
    preemptible         = var.preemptible
    provisioning_model  = var.provisioning_model
  }

  service_account {
    email  = var.service_account_email
    scopes = var.service_account_scopes
  }

  shielded_instance_config {
    enable_integrity_monitoring = var.enable_integrity_monitoring
    enable_secure_boot          = var.enable_secure_boot
    enable_vtpm                 = var.enable_vtpm
  }
}

terraform {
  backend "http" {
    address = "https://app.harness.io/gateway/iacm/api/orgs/default/projects/ContinuousIntegration/workspaces/anveshiac/terraform-backend?accountIdentifier=ucHySz2jQKKWQweZdXyCog"
    username = "harness"
    lock_address = "https://https://app.harness.io/gateway/iacm/api/orgs/default/projects/ContinuousIntegration/workspaces/anveshiac/terraform-backend/lock?accountIdentifier=ucHySz2jQKKWQweZdXyCog"
    lock_method = "POST"
    unlock_address = "https://https://app.harness.io/gateway/iacm/api/orgs/default/projects/ContinuousIntegration/workspaces/anveshiac/terraform-backend/lock?accountIdentifier=ucHySz2jQKKWQweZdXyCog"
    unlock_method = "DELETE"
  }
}
