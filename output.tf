output "vpc_id" {
  value = scaleway_vpc.vpc.id
}

output "private_network_id" {
  value = scaleway_vpc_private_network.private_network.id
}
