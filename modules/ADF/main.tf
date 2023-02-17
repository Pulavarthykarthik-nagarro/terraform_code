resource "azurerm_data_factory" "adf" {
    name = var.adf_name
    resource_group_name = var.resource_group_name
    location = var.region
    public_network_enabled = false
    managed_virtual_network_enabled = true
  
}



# Creating Azure IR

resource "azurerm_data_factory_integration_runtime_azure" "azure_ir" {
    name = var.azure_ir_name
    data_factory_id = azurerm_data_factory.adf.id
    location = var.region
    virtual_network_enabled = true
    compute_type = "General"
    core_count = "8" # Core count of the cluster which will execute data flow job.

  
}


# Manged Private Endpoints inside ADF Managed Virtual Network

#Manged Private Endpoints inside ADF Managed Virtual Network For SQL Server

resource "azurerm_data_factory_managed_private_endpoint" "sqlserver_managed_private_endpoint" {
    name = var.sqlserver_managed_private_endpoint_name
    data_factory_id = azurerm_data_factory.adf.id
    target_resource_id = var.sqlserver_private_connection_resource_id
    subresource_name = "sqlServer"

  
}


# #Manged Private Endpoints inside ADF Managed Virtual Network For ADB

resource "azurerm_data_factory_managed_private_endpoint" "adb_managed_private_endpoint" {
    name = var.adb_managed_private_endpoint_name
    data_factory_id = azurerm_data_factory.adf.id
    target_resource_id = var.adb_private_connection_resource_id
    subresource_name = "databricks_ui_api"

  
}


# #Manged Private Endpoints inside ADF Managed Virtual Network For ADLS

resource "azurerm_data_factory_managed_private_endpoint" "adls_managed_private_endpoint" {
    name = var.adls_managed_private_endpoint_name
    data_factory_id = azurerm_data_factory.adf.id
    target_resource_id = var.adls_private_connection_resource_id
    subresource_name = "blob" #need to check

  
}


# #Manged Private Endpoints inside ADF Managed Virtual Network For Azure Synapse

resource "azurerm_data_factory_managed_private_endpoint" "synapse_managed_private_endpoint" {
    name = var.synapse_managed_private_endpoint_name
    data_factory_id = azurerm_data_factory.adf.id
    target_resource_id = var.synapse_private_connection_resource_id
    subresource_name = "sqlServer" #need to check

  
}