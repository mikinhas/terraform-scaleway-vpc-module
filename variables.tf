variable "project_id" {
  type        = string
  description = "The project id"
  default     = null
}

variable "region" {
  type    = string
  default = null
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
  description = "Ipv4 subet"
  default     = "172.16.0.0/24"
}