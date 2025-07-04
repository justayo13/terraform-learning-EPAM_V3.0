# Variables for the Compute module

variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "env" {
  description = "The environment name (e.g., dev, uat, prod)."
  type        = string
}

variable "region" {
  description = "The GCP region for the instances."
  type        = string
}

variable "web_server_tag" {
  description = "The network tag to apply to web servers for firewall rules."
  type        = string
  default     = "web-server"
}
variable "machine_type" {
  description = "The machine type for the instances."
  type        = string
  default     = "e2-micro"
}

variable "source_image" {
  description = "The source image for the boot disk."
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "instance_count" {
  description = "The number of instances to create."
  type        = number
  default     = 2
}

variable "network_self_link" {
  description = "The self_link of the VPC network."
  type        = string
}

variable "subnet_self_link" {
  description = "The self_link of the subnet."
  type        = string
}
