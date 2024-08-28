output "instance_name" {
  description = "The name of the Google Compute Engine instance."
  value       = google_compute_instance.instance-20240828-181806.name
}

output "instance_id" {
  description = "The unique ID of the Google Compute Engine instance."
  value       = google_compute_instance.instance-20240828-181806.id
}

output "instance_self_link" {
  description = "The self-link URL of the Google Compute Engine instance."
  value       = google_compute_instance.instance-20240828-181806.self_link
}

output "instance_public_ip" {
  description = "The public IP address of the Google Compute Engine instance."
  value       = google_compute_instance.instance-20240828-181806.network_interface[0].access_config[0].nat_ip
}

output "instance_zone" {
  description = "The zone where the Google Compute Engine instance is located."
  value       = google_compute_instance.instance-20240828-181806.zone
}

output "instance_status" {
  description = "The status of the Google Compute Engine instance."
  value       = google_compute_instance.instance-20240828-181806.status
}
