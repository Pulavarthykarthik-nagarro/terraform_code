# Creating SQL Server

resource "azurerm_mssql_server" "pvt_endpt_sqlserver" {
    name = var.pvt_endpt_sqlserver_name
    resource_group_name = var.resource_group_name
    location = var.region
    version = var.pvt_endpt_sqlserver_version  #need to ask
    administrator_login = # need to decide
    administrator_login_password = # need to decide
    public_network_access_enabled = false
    outbound_network_restriction_enabled = true
  
}

# Creating SQL Database

resource "azurerm_mssql_database" "pvt_endpt_sqldb" {
    name = var.pvt_endpt_sqldb_name
    server_id = azurerm_mssql_server.pvt_endpt_sqlserver.id
    license_type = #

  
}

