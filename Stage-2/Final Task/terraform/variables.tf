variable "project_id" {
  description = "Input your project id"
  type = string
}

variable "region" {
  description = "Input your region to deploy resource"
  type = string
  default = "asia-southeast2"
}

variable "zone" {
  description = "Input your zone to deploy resource"
  type = string
  default = "asia-southeast2-a"
}

variable "machine-type" {
  description = "Input your machine type"
  type = string
  default = "e2-standard-2"
}