# Variables for the Network module

variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "env" {
  description = "The environment name (e.g., dev, uat, prod)."
  type        = string
}

variable "region" {
  description = "The GCP region for the subnet."
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
}

variable "routing_mode" {
  description = "The routing mode for the VPC."
  type        = string
  default     = "REGIONAL"
}

variable "private_ip_google_access" {
  description = "Allows VMs in this subnet to access Google services without external IPs."
  type        = bool
  default     = true
}