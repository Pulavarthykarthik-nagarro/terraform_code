

output "adls_private_connection_resource_id" {
    description = "ID for connecting Storage account with Private Endpoint"
    value = azurerm_storage_account.adls_001.id
  
}