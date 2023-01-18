#NSG for private endpointssubnet

resource "azurerm_network_security_group" "nsg_endpoint_subnet" {
    name = var.nsg_endpoint_name
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

  tags = var.tags_common
  
}




#NSG for Data Gateway Subnet

resource "azurerm_network_security_group" "nsg_gateway_subnet" {
    name = var.nsg_gateway_name
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

  tags = var.tags_common
  
}