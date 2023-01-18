resource "azurerm_resource_group" "resource_group" {
    name = var.resource_group_name
    location = var.region
    tags = var.tags_common
 
}




#Create Virtual Network

resource "azurerm_virtual_network" "virtual_network_shared" {
    name = var.virtual_network_name_shared
    location = azurerm_resource_group.resource_group.location
    address_space = [ var.cidr_block_shared]
    resource_group_name = azurerm_resource_group.resource_group.name

}


    
#Subnet for private endpoints subnet


resource "azurerm_subnet" "subnet_endpoint" {
    name = var.subnet_endpoint_name
    address_prefixes = [var.cidr_endpoint_subnet]
    virtual_network_name = azurerm_virtual_network.virtual_network_shared.name
    resource_group_name = azurerm_resource_group.resource_group.name
      
}

resource "azurerm_subnet_network_security_group_association" "subnet_endpoint_nsg_association" {
    subnet_id = azurerm_subnet.subnet_endpoint.id
    network_security_group_id = var.nsg_endpoint_subnet_id
      
}
    
#Subnet for Data Gateway Subnet

resource "azurerm_subnet" "subnet_data_gateway" {
    name = var.subnet_data_gateway_name
    address_prefixes = [var.cidr_data_gateway_subnet]
    virtual_network_name = azurerm_virtual_network.virtual_network_shared.name
    resource_group_name = azurerm_resource_group.resource_group.name
      
}

resource "azurerm_subnet_network_security_group_association" "subnet_data_gateway_nsg_association" {
    subnet_id = azurerm_subnet.subnet_data_gateway.id
    network_security_group_id = var.nsg_data_gateway_subnet
      
}


#NIC for first VM Data Gateway

resource "azurerm_network_interface" "nic_data_gateway_vm_one" {
    name = var.nic_data_gateway_vm_name_one
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name

    ip_configuration {
      name = "ipconfig_nic_vm_gateway_one"
      subnet_id = azurerm_subnet.subnet_data_gateway.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.public_ip_date_gateway_vm_one.id
    }
  
}


#Public Ip for first Data Gateway VM's

resource "azurerm_public_ip" "public_ip_date_gateway_vm_one" {
    name = var.public_ip_data_gateway_vm_name_one
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name
    allocation_method = "Static"
    tags = var.tags_common
    
  
}



#NIC for Second VM Data Gateway

resource "azurerm_network_interface" "nic_data_gateway_vm_two" {
    name = var.nic_data_gateway_vm_name_two
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name

    ip_configuration {
      name = "ipconfig_nic_vm_gateway_two"
      subnet_id = azurerm_subnet.subnet_data_gateway.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.public_ip_date_gateway_vm_two.id
    }
  
}


#Public Ip for second Data Gateway VM's

resource "azurerm_public_ip" "public_ip_date_gateway_vm_two" {
    name = var.public_ip_data_gateway_vm_name_two
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name
    allocation_method = "Static"
    tags = var.tags_common
    
  
}