resource "scaleway_vpc_private_network" "private_network" {
  name = var.name
  zone = var.zone

  tags = [
    "terraform",
    "prod"
  ]
}
