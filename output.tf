output "resource_group_name" {
  value = module.network.resource_group_name
}

output "resource_group_location" {
  value = module.network.resource_group_location
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "nat_gateway_created" {
  value = module.network.nat_gateway_created
}

output "nat_gateway_name" {
  value = module.network.nat_gateway_name
}

output "nat_gateway_id" {
  value = module.network.nat_gateway_id
}

output "nat_public_ip" {
  value = module.network.nat_public_ip
}
