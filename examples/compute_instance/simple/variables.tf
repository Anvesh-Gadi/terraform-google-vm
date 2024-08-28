# variables.tf

variable "instance_name" {
  description = "The name of the Google Compute Engine instance."
  type        = string
  default     = "instance-20240828-181806"
}

variable "boot_disk_image" {
  description = "The image used for the boot disk."
  type        = string
  default     = "projects/debian-cloud/global/images/debian-12-bookworm-v20240815"
}

variable "boot_disk_size" {
  description = "The size of the boot disk in GB."
  type        = number
  default     = 10
}

variable "boot_disk_type" {
  description = "The type of the boot disk."
  type        = string
  default     = "pd-balanced"
}

variable "machine_type" {
  description = "The machine type for the Google Compute Engine instance."
  type        = string
  default     = "e2-medium"
}

variable "network_subnetwork" {
  description = "The subnetwork to which the instance is connected."
  type        = string
  default     = "projects/linear-elf-433407-q0/regions/us-central1/subnetworks/default"
}

variable "service_account_email" {
  description = "The email of the service account associated with the instance."
  type        = string
  default     = "467144775560-compute@developer.gserviceaccount.com"
}

variable "zone" {
  description = "The zone where the Google Compute Engine instance is located."
  type        = string
  default     = "us-central1-c"
}

variable "instance_labels" {
  description = "A map of labels to assign to the instance."
  type        = map(string)
  default     = {
    goog-ec-src = "vm_add-tf"
  }
}

variable "can_ip_forward" {
  description = "Whether the instance can forward IP packets."
  type        = bool
  default     = false
}

variable "deletion_protection" {
  description = "Whether to enable deletion protection on the instance."
  type        = bool
  default     = false
}

variable "enable_display" {
  description = "Whether to enable display on the instance."
  type        = bool
  default     = false
}

variable "automatic_restart" {
  description = "Whether to automatically restart the instance when it is terminated."
  type        = bool
  default     = true
}

variable "on_host_maintenance" {
  description = "The maintenance behavior for the instance."
  type        = string
  default     = "MIGRATE"
}

variable "preemptible" {
  description = "Whether the instance is preemptible."
  type        = bool
  default     = false
}

variable "provisioning_model" {
  description = "The provisioning model for the instance."
  type        = string
  default     = "STANDARD"
}

variable "shielded_integrity_monitoring" {
  description = "Whether to enable integrity monitoring for Shielded VM."
  type        = bool
  default     = true
}

variable "shielded_secure_boot" {
  description = "Whether to enable secure boot for Shielded VM."
  type        = bool
  default     = false
}

variable "shielded_vtpm" {
  description = "Whether to enable vTPM for Shielded VM."
  type        = bool
  default     = true
}
