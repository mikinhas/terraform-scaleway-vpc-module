resource "scaleway_vpc_private_network" "private_network" {
  name = "private-network-production"
  zone = var.zone

  tags = [
    "terraform",
    "prod"
  ]
}
