#NSG for private endpoints subnet

resource "azurerm_network_security_group" "nsg_private_endpoint_subnet" {
    name = var.nsg_private_endpoint_subnet_name
    location = var.region
    resource_group_name = var.resource_group_name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

 
  
}




#NSG for Data Gateway Subnet

resource "azurerm_network_security_group" "nsg_data_gateway_subnet" {
    name = var.nsg_data_gateway_subnet_name
    location = var.region
    resource_group_name = var.resource_group_name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  
  
}




# #NSG for Azure Databricks Container Subnet

# resource "azurerm_network_security_group" "nsg_adb_container_subnet" {
#     name = var.nsg_adb_container_subnet_name
#     location = var.region
#     resource_group_name = var.resource_group_name

#   security_rule {
#     name                       = "test123"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "*"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }

#   tags = var.tags_common
  
# }


# #NSG for Azure Databricks Host Subnet

# resource "azurerm_network_security_group" "nsg_adb_host_subnet" {
#     name = var.nsg_adb_host_subnet_name
#     location = var.region
#     resource_group_name = var.resource_group_name

#   security_rule {
#     name                       = "test123"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "*"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }

#   tags = var.tags_common
  
# }