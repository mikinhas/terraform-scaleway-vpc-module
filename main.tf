resource "scaleway_vpc" "vpc" {
  project_id = var.project_id
  region     = var.region

  name = var.vpc_name

  tags = var.vpc_tags
}

resource "scaleway_vpc_private_network" "private_network" {
  name   = var.private_network_name
  region = var.region
  vpc_id = scaleway_vpc.vpc.id

  ipv4_subnet {
    subnet = var.ipv4_subnet
  }

  tags = var.private_network_tags
}
