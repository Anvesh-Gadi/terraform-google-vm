# This code is compatible with Terraform 4.25.0 and versions that are backwards compatible to 4.25.0.
# For information about validating this Terraform code, see https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/google-cloud-platform-build#format-and-validate-the-configuration

resource "google_compute_instance" "instance-20240828-181806" {
  boot_disk {
    auto_delete = true
    device_name = "instance-20240828-181806"

    initialize_params {
      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20240815"
      size  = 10
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  machine_type = "e2-medium"
  name         = "instance-20240828-181806"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/linear-elf-433407-q0/regions/us-central1/subnetworks/default"
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "467144775560-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  zone = "us-central1-c"
}
terraform {
  backend "http" {
    address = "https://app.harness.io/gateway/iacm/api/orgs/default/projects/ContinuousIntegration/workspaces/prasannaworkspace/terraform-backend?accountIdentifier=ucHySz2jQKKWQweZdXyCog"
    username = "harness"
    lock_address = "https://https://app.harness.io/gateway/iacm/api/orgs/default/projects/ContinuousIntegration/workspaces/prasannaworkspace/terraform-backend/lock?accountIdentifier=ucHySz2jQKKWQweZdXyCog"
    lock_method = "POST"
    unlock_address = "https://https://app.harness.io/gateway/iacm/api/orgs/default/projects/ContinuousIntegration/workspaces/prasannaworkspace/terraform-backend/lock?accountIdentifier=ucHySz2jQKKWQweZdXyCog"
    unlock_method = "DELETE"
  }
}
