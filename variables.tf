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

variable "private_network_name" {
  type        = string
  description = "Name of the network"
  default     = ""
}

variable "private_network_tags" {
  type        = list(string)
  description = "List of private network tags"
  default     = []

}

variable "ipv4_subnet" {
  type        = string
  description = "IPv4 subnet CIDR for the private network"
  default     = "172.16.0.0/24"

  validation {
    condition     = can(cidrhost(var.ipv4_subnet, 0))
    error_message = "The ipv4_subnet must be a valid CIDR notation (e.g., 172.16.0.0/24)."
  }
}