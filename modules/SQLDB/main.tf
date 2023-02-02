# Creating SQL Server

resource "azurerm_mssql_server" "sqlserver_private_endpoint" { 
    name = var.sqlserver_private_endpoint_name
    resource_group_name = var.resource_group_name
    location = var.region
    version = var.sqlserver_private_endpoint_version  #need to ask 
    administrator_login = # need to decide
    administrator_login_password = # need to decide
    public_network_access_enabled = false
    outbound_network_restriction_enabled = true
  
}

# Creating SQL Database

resource "azurerm_mssql_database" "sqldb_private_endpoint" {
    name = var.sqldb_private_endpoint_name
    server_id = azurerm_mssql_server.sqlserver_private_endpoint.id
    license_type = #

  
}

