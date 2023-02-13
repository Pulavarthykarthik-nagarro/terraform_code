output "sqlserver_private_connection_resource_id" {
    description = "ID for connecting SQL Server with Private Endpoint"
    value = azurerm_mssql_server.sqlserver.id
  
}