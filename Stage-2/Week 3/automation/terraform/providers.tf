terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 4.0"
    }
  }
  required_version = ">=1.3.0"
}

provider "google" {
  credentials = file("unified-chess-448404-b9-4130e3d3fc53.json")
  project = var.project_id
  region = var.region
  zone = var.zone
}