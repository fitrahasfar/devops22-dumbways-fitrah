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
  credentials = file("unified-chess-448404-b9-0bc9d2267a4a.json")
  project = var.project_id
  region = var.region
  zone = var.zone
}