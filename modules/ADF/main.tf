resource "azurerm_data_factory" "adf_private_endpoint" {
    name = var.adf_private_endpoint_name
    resource_group_name = var.resource_group_name
    location = var.region
    public_network_enabled = false
  
}



# Creating Azure IR

resource "azurerm_data_factory_integration_runtime_azure" "azure_ir" {
    name = var.azure_ir_name
    data_factory_id = azurerm_data_factory.adf_private_endpoint.id
    location = var.region
    virtual_network_enabled = true
    compute_type = "General"
    core_count = "" # Core count of the cluster which will execute data flow job.

  
}


# Manged Private Endpoints inside ADF Managed Virtual Network

#Manged Private Endpoints inside ADF Managed Virtual Network For SQL Server

resource "azurerm_data_factory_managed_private_endpoint" "adf_private_endpoint_sqlserver" {
    name = var.adf_private_endpoint_sqlserver_name
    data_factory_id = azurerm_data_factory.adf_private_endpoint.id
    target_resource_id = var.adf_private_endpoint_sqldb_id
    subresource_name = "sqlServer"

  
}


#Manged Private Endpoints inside ADF Managed Virtual Network For SQL Server

resource "azurerm_data_factory_managed_private_endpoint" "adf_private_endpoint_adb" {
    name = var.adf_private_endpoint_adb_name
    data_factory_id = azurerm_data_factory.adf_private_endpoint.id
    target_resource_id = var.adf_private_endpoint_adb_id
    subresource_name = "databricks_ui_api"

  
}