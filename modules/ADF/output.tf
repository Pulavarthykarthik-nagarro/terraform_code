output "private_connection_resource_id_adf" {
    description = "ID for connecting ADF with Private Endpoint"
    value = azurerm_data_factory.adf_private_endpoint.id
  
}
