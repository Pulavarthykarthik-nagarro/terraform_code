#Private Endpoint for ADF

resource "azurerm_private_endpoint" "adf_private_endpoint" {
    name = var.adf_private_endpoint_name
    resource_group_name = var.resource_group_name
    location = var.region
    subnet_id = var.private_endpoint_subnet_id
    private_service_connection {
      name = var.adf_private_service_connection_name
      private_connection_resource_id = var.adf_private_connection_resource_id #need to ask
      is_manual_connection = false
      subresource_names = ["datafactory"]#var.adf_subresource_name
    }
  
}



#Private DNS Zone for Data Factory

resource "azurerm_private_dns_zone" "adf_dns_zone" {
    name = "privatelink.datafactory.azure.net"  # need to check
    resource_group_name = var.resource_group_name

  
}

# Private DNS Zone Network Link for Data Factory

resource "azurerm_private_dns_zone_virtual_network_link" "adf_dns_network_link" {
    name = var.adf_dns_network_link_name
    resource_group_name = var.resource_group_name
    private_dns_zone_name = azurerm_private_dns_zone.adf_dns_zone.name
    virtual_network_id = var.virtual_network_shared_id
    
  
}


# DNS A Record to register the private endpoint

resource "azurerm_private_dns_a_record" "adf_dns_a_record" {
    name = var.adf_dns_a_record_name
    zone_name = azurerm_private_dns_zone.adf_dns_zone.name
    resource_group_name = var.resource_group_name
    ttl = 300
    records = [azurerm_private_endpoint.adf_private_endpoint.private_service_connection[0].private_ip_address]
    
  
}


#Private Endpoint for SQL Server

resource "azurerm_private_endpoint" "sqlserver_private_endpoint" {
    name = var.sqlserver_private_endpoint_name
    resource_group_name = var.resource_group_name
    location = var.region
    subnet_id = var.private_endpoint_subnet_id
    private_service_connection {
      name = var.sqlserver_private_service_connection_name
      private_connection_resource_id = var.sqlserver_private_connection_resource_id #need to ask
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
    private_dns_zone_name = azurerm_private_dns_zone.dns_zone_sqlserver.name
    virtual_network_id = var.virtual_network_shared_id
    
  
}


# DNS A Record to register the private endpoint for SQL Server

resource "azurerm_private_dns_a_record" "sql_dns_a_record" {
    name = var.sql_dns_a_record_name
    zone_name = azurerm_private_dns_zone.dns_zone_sqlserver.name
    resource_group_name = var.resource_group_name
    ttl = 300
    records = [azurerm_private_endpoint.sqlserver_private_endpoint.private_service_connection[0].private_ip_address]
    
  
}




#Private Endpoint for Azure Databricks

resource "azurerm_private_endpoint" "adb_private_endpoint" {
    name = var.adb_private_endpoint_name
    resource_group_name = var.resource_group_name
    location = var.region
    subnet_id = var.adb_container_subnet_id
    private_service_connection {
      name = var.adb_private_service_connection_name
      private_connection_resource_id = var.adb_private_connection_resource_id #need to ask
      is_manual_connection = false
      subresource_names = ["databricks_ui_api"]#var.adf_subresource_name
    }
  
}



#Private DNS Zone for Azure Databricks

resource "azurerm_private_dns_zone" "adb_dns_zone" {
    name = "privatelink.azuredatabricks.net"  # need to check
    resource_group_name = var.resource_group_name

  
}

# Private DNS Zone Network Link for Data Factory

resource "azurerm_private_dns_zone_virtual_network_link" "adb_dns_network_link" {
    name = var.adb_dns_network_link_name
    resource_group_name = var.resource_group_name
    private_dns_zone_name = azurerm_private_dns_zone.adb_dns_zone.name
    virtual_network_id = var.adb_virtual_network_id
    
  
}


# DNS A Record to register the private endpoint

resource "azurerm_private_dns_a_record" "adb_dns_a_record" {
    name = var.adb_dns_a_record_name
    zone_name = azurerm_private_dns_zone.adb_dns_zone.name
    resource_group_name = var.resource_group_name
    ttl = 300
    records = [azurerm_private_endpoint.adb_private_endpoint.private_service_connection[0].private_ip_address]
    
  
}
