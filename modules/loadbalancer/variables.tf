# Variables for the Load Balancer module

variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "env" {
  description = "The environment name (e.g., dev, uat, prod)."
  type        = string
}

variable "instance_group" {
  description = "The instance group to attach to the backend service."
  type        = string
}

variable "lb_port_range" {
  description = "Port range for the Load Balancer forwarding rule."
  type        = string
  default     = "80"
}

variable "armor_rules" {
  description = "A list of objects defining the Cloud Armor security policy rules."
  type = list(object({
    action         = string
    priority       = number
    description    = string
    versioned_expr = string
    src_ip_ranges  = list(string)
  }))
  default = [
    {
      action         = "allow"
      priority       = 2147483647
      description    = "Default allow all rule"
      versioned_expr = "SRC_IPS_V1"
      src_ip_ranges  = ["*"]
    }
  ]
}

variable "health_check_port" {
  description = "The port used for the health check."
  type        = number
  default     = 80
}

variable "health_check_interval_sec" {
  description = "How often (in seconds) to send a health check."
  type        = number
  default     = 5
}

variable "health_check_timeout_sec" {
  description = "How long (in seconds) to wait before claiming failure."
  type        = number
  default     = 5
}

variable "health_check_healthy_threshold" {
  description = "A so-far unhealthy instance will be marked healthy after this many consecutive successes."
  type        = number
  default     = 2
}

variable "health_check_unhealthy_threshold" {
  description = "A so-far healthy instance will be marked unhealthy after this many consecutive failures."
  type        = number
  default     = 2
}

variable "backend_protocol" {
  description = "The protocol for the backend service."
  type        = string
  default     = "HTTP"
}

variable "backend_port_name" {
  description = "The name of the port on the backend service."
  type        = string
  default     = "http"
}

variable "backend_timeout_sec" {
  description = "Timeout for the backend service."
  type        = number
  default     = 30
}