# variables.tf
variable "project_id" {
  description = "The ID of the Google Cloud project where resources will be created."
  type        = string
  default     = "centered-loader-422210-p3"

variable "instance_name" {
  description = "The name of the compute instance."
  type        = string
  default     = "instance-20240829-112235"
}

variable "machine_type" {
  description = "The machine type of the compute instance."
  type        = string
  default     = "e2-medium"
}

variable "boot_disk_image" {
  description = "The image to use for the boot disk."
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

variable "subnetwork" {
  description = "The subnetwork to attach the network interface to."
  type        = string
  default     = "projects/centered-loader-422210-p3/regions/us-central1/subnetworks/default"
}

variable "network_tier" {
  description = "The network tier for the instance."
  type        = string
  default     = "PREMIUM"
}

variable "automatic_restart" {
  description = "Whether the instance should be automatically restarted if it crashes."
  type        = bool
  default     = true
}

variable "on_host_maintenance" {
  description = "What happens when the host machine is under maintenance."
  type        = string
  default     = "MIGRATE"
}

variable "preemptible" {
  description = "Whether the instance is a preemptible instance."
  type        = bool
  default     = false
}

variable "provisioning_model" {
  description = "The provisioning model for the instance."
  type        = string
  default     = "STANDARD"
}

variable "service_account_email" {
  description = "The email address of the service account."
  type        = string
  default     = "651574577013-compute@developer.gserviceaccount.com"
}

variable "service_account_scopes" {
  description = "The scopes for the service account."
  type        = list(string)
  default     = [
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring.write",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/trace.append"
  ]
}

variable "enable_integrity_monitoring" {
  description = "Whether to enable integrity monitoring for the shielded instance."
  type        = bool
  default     = true
}

variable "enable_secure_boot" {
  description = "Whether to enable secure boot for the shielded instance."
  type        = bool
  default     = false
}

variable "enable_vtpm" {
  description = "Whether to enable vTPM for the shielded instance."
  type        = bool
  default     = true
}

variable "zone" {
  description = "The zone where the instance should be created."
  type        = string
  default     = "us-central1-c"
}

