output "nsg_private_endpoint_subnet_id" {
  description = "NSG ID for Private Endpoint Subnet"
  value = azurerm_network_security_group.nsg_private_endpoint_subnet.id
}


output "nsg_data_gateway_subnet_id" {
  description = "NSG ID for Data Gateway Subnet"
  value = azurerm_network_security_group.nsg_data_gateway_subnet.id
}


output "nsg_adb_container_subnet_id" {
  description = "NSG ID for ADB Container Subnet"
  value = azurerm_network_security_group.nsg_adb_container_subnet.id
}


output "nsg_adb_host_subnet_id" {
  description = "NSG ID for ADB Host Subnet"
  value = azurerm_network_security_group.nsg_adb_host_subnet.id
}
