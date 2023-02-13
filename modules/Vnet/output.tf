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


output "adb_virtual_network_id" {

  description = "Id of ADB Virtual Network"
  value = azurerm_virtual_network.adb_virtual_network.id
  
}



output "container_subnet_name" {

  description = "Name of the Container Subnet"
  value = azurerm_subnet.adb_container_subnet.name
  
}

output "host_subnet_name" {

  description = "Name of the Host Subnet"
  value = azurerm_subnet.adb_host_subnet.name
  
}


output "container_subnet_network_security_group_association_id" {

  description = "Id of the Container Subnet Network Security Group"
  value = azurerm_subnet_network_security_group_association.nsg_association_adb_container_subnet.id
  
}


output "host_subnet_network_security_group_association_id" {

  description = "Id of the Container Subnet Network Security Group"
  value = azurerm_subnet_network_security_group_association.nsg_association_adb_host_subnet.id
  
}


output "adb_container_subnet_id" {

  description = "Id of the ADB Private End Point Subnet"
  value = azurerm_subnet.adb_container_subnet.id
  
}



output "vm_data_gateway_1_nic_id" {

  description = "Data Gateway VM NIC ID"
  value = azurerm_network_interface.nic_vm_data_gateway_1.id
  
}


output "vm_data_gateway_2_nic_id" {

  description = "Data Gateway VM NIC ID"
  value = azurerm_network_interface.nic_vm_data_gateway_2.id
  
}