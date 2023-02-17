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




#NSG for Azure Databricks 

resource "azurerm_network_security_group" "nsg_adb" {
  name = var.nsg_adb_name
  location = var.region
  resource_group_name = var.resource_group_name
  # security_rule {
  #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-inbound"
  #   priority                   = 100
  #   direction                  = "Inbound"
  #   access                     = "Allow"
  #   protocol                   = "*"
  #   source_port_range          = "*"
  #   destination_port_range     = "*"
  #   source_address_prefix      = "VirtualNetwork"
  #   destination_address_prefix = "VirtualNetwork"
  # }

  # security_rule {
  #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-databricks-webapp"
  #   priority                   = 100
  #   direction                  = "Outbound"
  #   access                     = "Allow"
  #   protocol                   = "Tcp"
  #   source_port_range          = "*"
  #   destination_port_range     = "443"
  #   source_address_prefix      = "VirtualNetwork"
  #   destination_address_prefix = "AzureDatabricks"
  # }

  # security_rule {
  #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-sql"
  #   priority                   = 101
  #   direction                  = "Outbound"
  #   access                     = "Allow"
  #   protocol                   = "Tcp"
  #   source_port_range          = "*"
  #   destination_port_range     = "3306"
  #   source_address_prefix      = "VirtualNetwork"
  #   destination_address_prefix = "Sql"
  # }

  # security_rule {
  #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-storage"
  #   priority                   = 102
  #   direction                  = "Outbound"
  #   access                     = "Allow"
  #   protocol                   = "Tcp"
  #   source_port_range          = "*"
  #   destination_port_range     = "443"
  #   source_address_prefix      = "VirtualNetwork"
  #   destination_address_prefix = "Storage"
  # }

  # security_rule {
  #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-outbound"
  #   priority                   = 103
  #   direction                  = "Outbound"
  #   access                     = "Allow"
  #   protocol                   = "*"
  #   source_port_range          = "*"
  #   destination_port_range     = "*"
  #   source_address_prefix      = "VirtualNetwork"
  #   destination_address_prefix = "VirtualNetwork"
  # }

  # security_rule {
  #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-eventhub"
  #   priority                   = 104
  #   direction                  = "Outbound"
  #   access                     = "Allow"
  #   protocol                   = "Tcp"
  #   source_port_range          = "*"
  #   destination_port_range     = "9093"
  #   source_address_prefix      = "VirtualNetwork"
  #   destination_address_prefix = "EventHub"
  # }
}

  
  



# # #NSG for Azure Databricks Host Subnet

# resource "azurerm_network_security_group" "nsg_adb_host_subnet" {
#     name = var.nsg_adb_host_subnet_name
#     location = var.region
#     resource_group_name = var.resource_group_name

#   security_rule {
#     name                       = "test123"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Deny"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "80"
#     source_address_prefix      = "136.185.196.233"
#     destination_address_prefix = "*"
#   }

#   #tags = var.tags_common
  
# }


