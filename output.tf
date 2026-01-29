output "vpc_id" {
  description = "The ID of the created VPC"
  value       = scaleway_vpc.vpc.id
}

output "vpc_name" {
  description = "The name of the created VPC"
  value       = scaleway_vpc.vpc.name
}

output "private_network_id" {
  description = "The ID of the created private network"
  value       = scaleway_vpc_private_network.private_network.id
}

output "private_network_name" {
  description = "The name of the created private network"
  value       = scaleway_vpc_private_network.private_network.name
}

output "private_network_cidr" {
  description = "The IPv4 CIDR block of the private network"
  value       = scaleway_vpc_private_network.private_network.ipv4_subnet[0].subnet
}
