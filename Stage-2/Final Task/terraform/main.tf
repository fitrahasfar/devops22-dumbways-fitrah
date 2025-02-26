# VPC Network
resource "google_compute_network" "vpc_network" {
  name = "custom-vpc"
}

# Firewall rule SSH
resource "google_compute_firewall" "name" {
  name = "allow-ssh"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["allow-ssh"]
}

# Firewall rule HTTP port 80, 443, 3000, 3030, 5000, 8080, 9100, 9090 
resource "google_compute_firewall" "allow_http" {
  name = "allow-http"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports = ["80", "443", "3000", "3030", "5000", "8080", "9100", "9090"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["allow-http"]
}

# Firewall rule icmp
resource "google_compute_firewall" "allow_icmp" {
  name = "allow-icmp"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"  # ICMP untuk ping
  }

  source_ranges = ["0.0.0.0/0"]  # Mengizinkan ICMP dari semua alamat IP

  target_tags = ["allow-icmp"]  # VM dengan tag 'allow-icmp' bisa menerima ping (ICMP)
}

# Static IP address Bastion
resource "google_compute_address" "static_ip_bastion" {
  name = "static-ip-bastion"
  region = var.region
}

# Static IP address Staging
resource "google_compute_address" "static_ip_staging" {
  name = "static-ip-staging"
  region = var.region
}

# Static IP address Debian
resource "google_compute_address" "static_ip_production" {
  name = "static-ip-production"
  region = var.region
}

# Bastion VM
resource "google_compute_instance" "bastion_server" {
  name = "bastion-server"
  machine_type = var.machine-type
  zone = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2404-noble-amd64-v20250117"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.id
    access_config {
      nat_ip = google_compute_address.static_ip_bastion.address
    }
  }

  tags = ["allow-ssh", "allow-http", "allow-icmp"]
}

# Staging VM
resource "google_compute_instance" "staging_server" {
  name = "staging-server"
  machine_type = var.machine-type
  zone = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2404-noble-amd64-v20250117"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.id
    access_config {
      nat_ip = google_compute_address.static_ip_staging.address
    }
  }

  tags = ["allow-ssh", "allow-http", "allow-icmp"]
}

# Production VM
resource "google_compute_instance" "production-server" {
  name = "production-server"
  machine_type = var.machine-type
  zone = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2404-noble-amd64-v20250117"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.id
    access_config {
      nat_ip = google_compute_address.static_ip_production.address
    }
  }

  tags = ["allow-ssh", "allow-http", "allow-icmp"]
}