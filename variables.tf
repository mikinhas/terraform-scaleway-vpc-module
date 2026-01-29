variable "project_id" {
  type        = string
  description = "The Scaleway project ID"
}

variable "region" {
  type        = string
  description = "The Scaleway region where resources will be created (e.g., fr-par, nl-ams, pl-waw)"
}

variable "vpc_name" {
  type        = string
  description = "Vpc name"
  default     = "vpc01"
}

variable "vpc_tags" {
  type        = list(string)
  description = "List of vpc tags"
  default     = []

}

variable "private_networks" {
  type = map(object({
    ipv4_subnet = string
    tags        = optional(list(string), [])
  }))
  description = "Map of private networks to create. Key is the network name, value contains ipv4_subnet and optional tags"
  default     = {}

  validation {
    condition = alltrue([
      for name, network in var.private_networks : can(cidrhost(network.ipv4_subnet, 0))
    ])
    error_message = "All ipv4_subnet values must be valid CIDR notation (e.g., 172.16.0.0/24)."
  }
}