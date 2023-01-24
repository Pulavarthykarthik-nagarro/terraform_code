#Private Endpoint for ADF

resource "azurerm_private_endpoint" "adf_pvt_endpt" {
    name = var.adf_pvt_endpt
    resource_group_name = var.resource_group_name
    location = var.region
    subnet_id = var.adf_subnet_id
    private_service_connection {
      name = var.adf_private_service_connection_name
      private_connection_resource_id = var.adf_resource_id
      is_manual_connection = false
      subresource_names = ["datafactory"]#var.adf_subresource_name
    }
  
}



#Private DNS Zone for Data Factory
resource "azurerm_private_dns_zone" "dns_zone_adf" {
    name = "privatelink.datafactory.azure.net"  # need to check
    resource_group_name = var.resource_group_name

  
}

# Private DNS Zone Network Link for Data Factory

resource "azurerm_private_dns_zone_virtual_network_link" "adf_dns_network_link" {
    name = var.adf_dns_network_link_name
    resource_group_name = var.resource_group_name
    private_dns_zone_name = azurerm_private_dns_zone.dns_zone_adf.name
    virtual_network_id = var.adf_dns_network_link_vnet_id
    
  
}


# DNS A Record to register the private endpoint

resource "azurerm_private_dns_a_record" "adf_dns_a" {
    name = var.adf_dns_a_name
    zone_name = azurerm_private_dns_zone.dns_zone_adf.name
    resource_group_name = var.resource_group_name
    ttl = 300
    records = [var.adf_nic_id]
    
  
}


#Private Endpoint for SQL Server

resource "azurerm_private_endpoint" "sqlserver_pvt_endpt" {
    name = var.sqlserver_pvt_endpt_name
    resource_group_name = var.resource_group_name
    location = var.region
    subnet_id = var.sqlserver_subnet_id
    private_service_connection {
      name = var.sqlserver_private_service_connection_name
      private_connection_resource_id = var.sqlserver_resource_id
      is_manual_connection = false
      subresource_names = ["sqlServer"] #var.sqlserver_subresource_name
    }
  
}






#Private DNS Zone for SQL Server
resource "azurerm_private_dns_zone" "dns_zone_sqlserver" {
    name = "privatelink.database.windows.net"  # need to check
    resource_group_name = var.resource_group_name

  
}

# Private DNS Zone Network Link for SQL Server

resource "azurerm_private_dns_zone_virtual_network_link" "sqlserver_dns_network_link" {
    name = var.sqlserver_dns_network_link_name
    resource_group_name = var.resource_group_name
    private_dns_zone_name = azurerm_private_dns_zone.dns_zone_sqlserver.id
    virtual_network_id = var.adf_dns_network_link_vnet_id
    
  
}


# DNS A Record to register the private endpoint for SQL Server

resource "azurerm_private_dns_a_record" "sqlserver_dns_a" {
    name = var.sqlserver_dns_a_name
    zone_name = azurerm_private_dns_zone.dns_zone_sqlserver.name
    resource_group_name = var.resource_group_name
    ttl = 300
    records = [var.sqlserver_nic_id]
    
  
}
