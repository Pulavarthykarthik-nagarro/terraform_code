#Private Endpoint for ADF

resource "azurerm_private_endpoint" "private_endpoint_adf" {
    name = var.private_endpoint_adf_name
    resource_group_name = var.resource_group_name
    location = var.region
    subnet_id = var.private_endpoint_subnet_id
    private_service_connection {
      name = var.private_service_connection_adf_name
      private_connection_resource_id = var.private_connection_resource_id_adf #need to ask
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

resource "azurerm_private_dns_zone_virtual_network_link" "dns_network_link_adf" {
    name = var.dns_network_link_adf_name
    resource_group_name = var.resource_group_name
    private_dns_zone_name = azurerm_private_dns_zone.dns_zone_adf.name
    virtual_network_id = var.virtual_network_shared_id
    
  
}


# DNS A Record to register the private endpoint

resource "azurerm_private_dns_a_record" "dns_a_adf" {
    name = var.dns_a_adf_name
    zone_name = azurerm_private_dns_zone.dns_zone_adf.name
    resource_group_name = var.resource_group_name
    ttl = 300
    records = [var.nic_adf_id]
    
  
}


#Private Endpoint for SQL Server

resource "azurerm_private_endpoint" "private_endpoint_sqlserver" {
    name = var.private_endpoint_sqlserver_name
    resource_group_name = var.resource_group_name
    location = var.region
    subnet_id = var.private_endpoint_subnet_id
    private_service_connection {
      name = var.private_service_connection_sqlserver_name
      private_connection_resource_id = var.private_connection_resource_id_sqlserver #need to ask
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

resource "azurerm_private_dns_zone_virtual_network_link" "dns_network_link_sqlserver" {
    name = var.dns_network_link_sqlserver_name
    resource_group_name = var.resource_group_name
    private_dns_zone_name = azurerm_private_dns_zone.dns_zone_sqlserver.id
    virtual_network_id = var.virtual_network_shared_id
    
  
}


# DNS A Record to register the private endpoint for SQL Server

resource "azurerm_private_dns_a_record" "dns_a_sqlserver" {
    name = var.dns_a_sqlserver_name
    zone_name = azurerm_private_dns_zone.dns_zone_sqlserver.name
    resource_group_name = var.resource_group_name
    ttl = 300
    records = [var.nic_id_sqlserver]
    
  
}




#Private Endpoint for Azure Databricks

resource "azurerm_private_endpoint" "private_endpoint_adb" {
    name = var.private_endpoint_adb_name
    resource_group_name = var.resource_group_name
    location = var.region
    subnet_id = var.subnet_id_private_endpoint_adb
    private_service_connection {
      name = var.private_service_connection_adb_name
      private_connection_resource_id = var.private_connection_resource_id_adb #need to ask
      is_manual_connection = false
      subresource_names = ["databricks_ui_api"]#var.adf_subresource_name
    }
  
}



#Private DNS Zone for Azure Databricks

resource "azurerm_private_dns_zone" "dns_zone_adb" {
    name = "privatelink.azuredatabricks.net"  # need to check
    resource_group_name = var.resource_group_name

  
}

# Private DNS Zone Network Link for Data Factory

resource "azurerm_private_dns_zone_virtual_network_link" "dns_network_link_adb" {
    name = var.dns_network_link_adb_name
    resource_group_name = var.resource_group_name
    private_dns_zone_name = azurerm_private_dns_zone.dns_zone_adb.name
    virtual_network_id = var.vnet_dns_network_link_adb_id
    
  
}


# DNS A Record to register the private endpoint

resource "azurerm_private_dns_a_record" "dns_a_adb" {
    name = var.dns_a_adb_name
    zone_name = azurerm_private_dns_zone.dns_zone_adb.name
    resource_group_name = var.resource_group_name
    ttl = 300
    records = [var.nic_id_adb]
    
  
}
