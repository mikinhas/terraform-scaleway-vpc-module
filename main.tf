resource "scaleway_vpc" "vpc" {
  project_id = var.project_id
  region     = var.region

  name = var.vpc_name

  tags = var.vpc_tags
}

resource "scaleway_vpc_private_network" "private_network" {
  for_each = var.private_networks

  name   = each.key
  region = var.region
  vpc_id = scaleway_vpc.vpc.id

  ipv4_subnet {
    subnet = each.value.ipv4_subnet
  }

  tags = each.value.tags
}
