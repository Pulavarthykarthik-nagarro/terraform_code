output "synapse_private_connection_resource_id" {
    description = "ID for connecting Azure Synapse with Private Endpoint"
    value = azurerm_synapse_workspace.synapse.id
  
}
