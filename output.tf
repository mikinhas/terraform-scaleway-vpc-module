output "vpc_id" {
  description = "The ID of the created VPC"
  value       = scaleway_vpc.vpc.id
}

output "vpc_name" {
  description = "The name of the created VPC"
  value       = scaleway_vpc.vpc.name
}

output "private_networks" {
  description = "Map of created private networks with their details"
  value = {
    for name, network in scaleway_vpc_private_network.private_network : name => {
      id          = network.id
      name        = network.name
      ipv4_subnet = network.ipv4_subnet[0].subnet
    }
  }
}
