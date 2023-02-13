resource "azurerm_resource_group" "resource_group" {
    name = var.resource_group_name
    location = var.region
    
 
}




#Shared Virtual Network

resource "azurerm_virtual_network" "virtual_network_shared" {
    name = var.virtual_network_shared_name
    location = azurerm_resource_group.resource_group.location
    address_space = [ var.cidr_block_shared]
    resource_group_name = azurerm_resource_group.resource_group.name

}


    
#Subnet for private endpoints subnet


resource "azurerm_subnet" "subnet_private_endpoint" {
    name = var.subnet_private_endpoint_name
    address_prefixes = [var.cidr_private_endpoint_subnet]
    virtual_network_name = azurerm_virtual_network.virtual_network_shared.name
    resource_group_name = azurerm_resource_group.resource_group.name
    #private_endpoint_network_policies_enabled = false  need to be checked
      
}

resource "azurerm_subnet_network_security_group_association" "nsg_association_subnet_private_endpoint" {
    subnet_id = azurerm_subnet.subnet_private_endpoint.id
    network_security_group_id = var.nsg_private_endpoint_subnet_id
      
}
    
#Subnet for Data Gateway Subnet

resource "azurerm_subnet" "subnet_data_gateway" {
    name = var.subnet_data_gateway_name
    address_prefixes = [var.cidr_data_gateway_subnet]
    virtual_network_name = azurerm_virtual_network.virtual_network_shared.name
    resource_group_name = azurerm_resource_group.resource_group.name
      
}

resource "azurerm_subnet_network_security_group_association" "nsg_association_subnet_data_gateway" {
    subnet_id = azurerm_subnet.subnet_data_gateway.id
    network_security_group_id = var.nsg_data_gateway_subnet_id
      
}


#NIC for first VM Data Gateway

resource "azurerm_network_interface" "nic_vm_data_gateway_1" {
    name = var.nic_vm_data_gateway_1_name
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name

    ip_configuration {
      name = "ipconfig_nic_vm_gateway_1"
      subnet_id = azurerm_subnet.subnet_data_gateway.id
      private_ip_address_allocation = "Dynamic"
      #public_ip_address_id = azurerm_public_ip.public_ip_date_gateway_vm_one.id
    }
  
}


#Public Ip for first Data Gateway VM's

# resource "azurerm_public_ip" "public_ip_date_gateway_vm_1" {
#     name = var.public_ip_data_gateway_vm_1_name
#     location = azurerm_resource_group.resource_group.location
#     resource_group_name = azurerm_resource_group.resource_group.name
#     allocation_method = "Static"
#     tags = var.tags_common
    
  
# }



#NIC for Second VM Data Gateway

resource "azurerm_network_interface" "nic_vm_data_gateway_2" {
    name = var.nic_vm_data_gateway_2_name
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name

    ip_configuration {
      name = "ipconfig_nic_vm_gateway_2"
      subnet_id = azurerm_subnet.subnet_data_gateway.id
      private_ip_address_allocation = "Dynamic"
      #public_ip_address_id = azurerm_public_ip.public_ip_date_gateway_vm_two.id
    }
  
}


# #Public Ip for second Data Gateway VM's

# resource "azurerm_public_ip" "public_ip_date_gateway_vm_2" {
#     name = var.public_ip_data_gateway_vm_2_name
#     location = azurerm_resource_group.resource_group.location
#     resource_group_name = azurerm_resource_group.resource_group.name
#     allocation_method = "Static"
#     tags = var.tags_common
    
  
# }




#NIC for ADF Private Endpoint

resource "azurerm_network_interface" "nic_adf_private_endpoint" {
    name = var.nic_adf_private_endpoint_name
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name

    ip_configuration {
      name = "ipconfig_nic_adf_pvt_endpoint"
      subnet_id = azurerm_subnet.subnet_private_endpoint.id
      private_ip_address_allocation = "Dynamic"
      
    }
  
}


#NIC for SQL Server Private Endpoint

resource "azurerm_network_interface" "nic_sqlserver_private_endpoint" {
    name = var.nic_sqlserver_private_endpoint_name
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name

    ip_configuration {
      name = "ipconfig_nic_sqlserver_pvt_endpt"
      subnet_id = azurerm_subnet.subnet_private_endpoint.id
      private_ip_address_allocation = "Dynamic"
      
    }
  
}


# #Virtual Network for Azure DataBricks


resource "azurerm_virtual_network" "adb_virtual_network" {
    name = var.adb_virtual_network_name
    location = azurerm_resource_group.resource_group.location
    address_space = [ var.adb_cidr_block]
    resource_group_name = azurerm_resource_group.resource_group.name

}

# Private Subnet (Container Subnet)

resource "azurerm_subnet" "adb_container_subnet" {
    name = var.adb_container_subnet_name
    address_prefixes = [var.cidr_adb_container_subnet]
    virtual_network_name = azurerm_virtual_network.adb_virtual_network.name
    resource_group_name = azurerm_resource_group.resource_group.name   

    delegation{
        name = var.delegation_adb_container_subnet_name
        service_delegation {
          name = "Microsoft.Databricks/workspaces"
          actions = [
            "Microsoft.Network/virtualNetworks/subnets/join/action",
            "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
            "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
        }



    } 
  
}


resource "azurerm_subnet_network_security_group_association" "nsg_association_adb_container_subnet" {
    subnet_id = azurerm_subnet.adb_container_subnet.id
    network_security_group_id = var.nsg_adb_container_subnet_id
      
}


# # Private Subnet (host Subnet)

resource "azurerm_subnet" "adb_host_subnet" {
    name = var.adb_host_subnet_name
    address_prefixes = [var.cidr_adb_host_subnet]
    virtual_network_name = azurerm_virtual_network.adb_virtual_network.name
    resource_group_name = azurerm_resource_group.resource_group.name   

    delegation{
        name = var.delegation_adb_host_subnet_name
        service_delegation {
          name = "Microsoft.Databricks/workspaces"
          actions = [
            "Microsoft.Network/virtualNetworks/subnets/join/action",
            "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
            "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
        }



    } 
  
}


resource "azurerm_subnet_network_security_group_association" "nsg_association_adb_host_subnet" {
    subnet_id = azurerm_subnet.adb_host_subnet.id
    network_security_group_id = var.nsg_adb_host_subnet_id
      
}


#NIC for ADB Private Endpoint

resource "azurerm_network_interface" "nic_adb_private_endpoint" {
    name = var.nic_adb_private_endpoint_name
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name

    ip_configuration {
      name = "ipconfig_nic_adb_pvt_endpoint"
      subnet_id = azurerm_subnet.adb_container_subnet.id
      private_ip_address_allocation = "Dynamic"
      
    }
  
}


# Vnet Peering

resource "azurerm_virtual_network_peering" "adb_shared_vnet_peering" {
    name = var.adb_shared_vnet_peering_name
    resource_group_name = azurerm_resource_group.resource_group.name
    virtual_network_name = azurerm_virtual_network.adb_virtual_network.name
    remote_virtual_network_id = azurerm_virtual_network.virtual_network_shared.id
  
}