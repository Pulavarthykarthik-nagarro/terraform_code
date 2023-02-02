output "resource_group_name" {
  description   = "Name of the Resource Group."
  value       = azurerm_resource_group.resource_group.name

}


output "region" {
  description = "Region for Deployment"
  value = azurerm_resource_group.resource_group.location
  
}


output "private_endpoint_subnet_id" {

  description = "Id of the Private End Point Subnet"
  value = azurerm_subnet.subnet_private_endpoint.id

  
}

output "virtual_network_shared_id" {

  description = "Id of the Private End Point Virtual Network"
  value = azurerm_virtual_network.virtual_network_shared.id

  
}


output "nic_adf_id" {

  description = "NIC Id of ADF"
  value = azurerm_network_interface.nic_adf_private_endpoint.ip_configuration
  
}


