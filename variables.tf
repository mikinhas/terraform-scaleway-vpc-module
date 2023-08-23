variable "project_id" {
  type        = string
  description = "The project id"
  default     = null
}

variable "region" {
  type    = string
  default = null
}

variable "zone" {
  type        = string
  description = "Name of region zone"
  default     = ""
}

variable "name" {
  type        = string
  description = "Name of the network"
  default     = ""
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
