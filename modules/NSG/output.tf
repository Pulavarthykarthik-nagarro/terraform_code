output "nsg_endpoint_subnet_name" {
  description   = "Name of the NSG for Private Endpoint Subnet"
  value = azurerm_network_security_group.nsg_endpoint_subnet.name
}


output "nsg_gateway_subnet_name" {
  description   = "Name of the NSG for Data Gateway Subnet"
  value = azurerm_network_security_group.nsg_gateway_subnet.name
}


output "nsg_gateway_subnet_id" {
  description   = "Id for Data Gateway Subnet"
  value = azurerm_network_security_group.nsg_gateway_subnet.id
}

output "nsg_endpoint_subnet_id" {
  description   = "Id for Private Endpoint Subnet"
  value = azurerm_network_security_group.nsg_endpoint_subnet.id
}