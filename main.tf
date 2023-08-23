resource "scaleway_vpc" "vpc" {
  project_id = var.project_id
  region     = var.region

  name = var.vpc_name

  tags = var.vpc_tags
}

resource "scaleway_vpc_private_network" "private_network" {
  name = var.name
  zone = var.zone

  tags = [
    "terraform",
    "prod"
  ]
}
