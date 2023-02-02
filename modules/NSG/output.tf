output "nsg_subnet_private_endpoint_id" {
  description = "NSG ID for Private Endpoint Subnet"
  value = azurerm_network_security_group.nsg_private_endpoint_subnet.id
}


output "nsg_subnet_data_gateway_id" {
  description = "NSG ID for Data Gateway Subnet"
  value = azurerm_network_security_group.nsg_data_gateway_subnet.id
}
