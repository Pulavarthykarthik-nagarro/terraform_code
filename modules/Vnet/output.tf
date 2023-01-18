output "resource_group_name" {
  description   = "Name of the Resource Group."
  value       = azurerm_resource_group.resource_group.name
}

output "virtual_network_shared_name" {
  description   = "Name of the Shared Virtual Network"
  value       = azurerm_virtual_network.virtual_network_shared.name
}


output "private_endpoint_subnet_name" {
  description   = "Name of the Subnet for Private Endpoint"
  value       = azurerm_subnet.subnet_endpoint.name
}

output "private_endpoint_subnet_id" {
  description   = "Id for Private Endpoint"
  value       = azurerm_subnet.subnet_endpoint.id
}


output "data_gateway_subnet_name" {
  description   = "Name of the Subnet for Data Gateway"
  value       = azurerm_subnet.subnet_data_gateway.name
}

output "data_gateway_subnet_id" {
  description   = "Id for Data Gateway"
  value       = azurerm_subnet.subnet_data_gateway.id
}

output "nic_data_gateway_vm_one_id" {
  description   = "NIC Id for First VM in Data Gateway Subnet"
  value       = azurerm_network_interface.nic_data_gateway_vm_one.id
}

output "nic_data_gateway_vm_two_id" {
  description   = "NIC Id for Second VM in Data Gateway Subnet"
  value       = azurerm_network_interface.nic_data_gateway_vm_two.id
}