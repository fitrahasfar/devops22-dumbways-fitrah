output "ubuntu_internal_ip" {
  value = google_compute_instance.ubuntu_server.network_interface[0].network_ip
}

output "ubuntu_external_ip" {
  value = google_compute_instance.ubuntu_server.network_interface[0].access_config[0].nat_ip
}

output "debian_internal_ip" {
  value = google_compute_instance.debian-server.network_interface[0].network_ip
}

output "debian_external_ip" {
  value = google_compute_instance.debian-server.network_interface[0].access_config[0].nat_ip
}