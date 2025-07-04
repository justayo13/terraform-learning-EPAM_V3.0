# Variables for the Firewall module

variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "env" {
  description = "The environment name (e.g., dev, uat, prod)."
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "web_server_tag" {
  description = "The network tag to apply to web servers for firewall rules."
  type        = string
  default     = "web-server"
}

variable "firewall_rule_priority" {
  description = "The priority for the firewall rules."
  type        = number
  default     = 1000
}

variable "ssh_source_ranges" {
  description = "A list of CIDR blocks to allow SSH from. MUST be set in a .tfvars file."
  type        = list(string)
}

variable "http_source_ranges" {
  description = "A list of CIDR blocks to allow HTTP from."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "https_source_ranges" {
  description = "A list of CIDR blocks to allow HTTPS from."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "http_ports" {
  description = "List of ports to open for HTTP traffic."
  type        = list(string)
  default     = ["80"]
}

variable "https_ports" {
  description = "List of ports to open for HTTPS traffic."
  type        = list(string)
  default     = ["443"]
}

variable "ssh_ports" {
  description = "List of ports to open for SSH traffic."
  type        = list(string)
  default     = ["22"]
}
