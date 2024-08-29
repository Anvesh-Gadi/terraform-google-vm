# outputs.tf

output "instance_name" {
  description = "The name of the compute instance."
  value       = google_compute_instance.instance.name
}

output "instance_self_link" {
  description = "The self link of the compute instance."
  value       = google_compute_instance.instance.self_link
}

output "instance_zone" {
  description = "The zone where the compute instance is located."
  value       = google_compute_instance.instance.zone
}

output "instance_machine_type" {
  description = "The machine type of the compute instance."
  value       = google_compute_instance.instance.machine_type
}

output "instance_public_ip" {
  description = "The public IP address of the compute instance, if available."
  value       = google_compute_instance.instance.network_interface[0].access_config[0].nat_ip
}

output "instance_private_ip" {
  description = "The private IP address of the compute instance."
  value       = google_compute_instance.instance.network_interface[0].network_ip
}
