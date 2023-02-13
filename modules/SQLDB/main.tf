# Creating SQL Server

resource "azurerm_mssql_server" "sqlserver" { 
    name = var.sqlserver_name
    resource_group_name = var.resource_group_name
    location = var.region
    version = var.sqlserver_version  #need to ask 
    administrator_login = var.sqlserver_administrator_login
    administrator_login_password = var.sqlserver_administrator_login_password
    public_network_access_enabled = false
    outbound_network_restriction_enabled = true
  
}

# Creating SQL Database

resource "azurerm_mssql_database" "sqldb_private_endpoint" {
    name = var.sqldb_name
    server_id = azurerm_mssql_server.sqlserver.id
    license_type = "BasePrice"
    sku_name = var.sqldb_sku_name
    max_size_gb = var.sqldb_size_db

  
}

