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

# Firewall rule HTTP port 80
resource "google_compute_firewall" "allow_http" {
  name = "allow-http"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports = ["80", "3000", "5000"]
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

# Static IP address Ubuntu
resource "google_compute_address" "static_ip_ubuntu" {
  name = "static-ip-ubuntu"
  region = var.region
}

# Static IP address Debian
resource "google_compute_address" "static_ip_debian" {
  name = "static-ip-debian"
  region = var.region
}

# Ubuntu VM
resource "google_compute_instance" "ubuntu_server" {
  name = "ubuntu-server"
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
      nat_ip = google_compute_address.static_ip_ubuntu.address
    }
  }

  tags = ["allow-ssh", "allow-http", "allow-icmp"]
}

# Debian VM
resource "google_compute_instance" "debian-server" {
  name = "debian-server"
  machine_type = var.machine-type
  zone = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.id
    access_config {
      nat_ip = google_compute_address.static_ip_debian.address
    }
  }

  tags = ["allow-ssh", "allow-http", "allow-icmp"]
}