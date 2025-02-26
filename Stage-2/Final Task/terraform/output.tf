# Bastion ip
output "bastion_internal_ip" {
  value = google_compute_instance.bastion_server.network_interface[0].network_ip
}

output "bastion_external_ip" {
  value = google_compute_instance.bastion_server.network_interface[0].access_config[0].nat_ip
}

# Jenskins and Monitoring ip
output "jenkinsandmonitoring_internal_ip" {
  value = google_compute_instance.jenkinsandmonitoring_server.network_interface[0].network_ip
}

output "jenkinsandmonitoring_external_ip" {
  value = google_compute_instance.jenkinsandmonitoring_server.network_interface[0].access_config[0].nat_ip
}


# Staging ip

output "staging_internal_ip" {
  value = google_compute_instance.staging_server.network_interface[0].network_ip
}

output "staging_external_ip" {
  value = google_compute_instance.staging_server.network_interface[0].access_config[0].nat_ip
}

# Production ip
output "production_internal_ip" {
  value = google_compute_instance.production-server.network_interface[0].network_ip
}

output "production_external_ip" {
  value = google_compute_instance.production-server.network_interface[0].access_config[0].nat_ip
}