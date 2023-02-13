output "adb_private_connection_resource_id" {
    description = "ID for connecting ADB with Private Endpoint"
    value = azurerm_databricks_workspace.adb.id
  
}