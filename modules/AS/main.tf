resource "azurerm_storage_account" "synapse_adls" {
    name = var.synapse_adls_name
    resource_group_name = var.resource_group_name
    location = var.region
    account_tier = "Standard"
    account_replication_type = "LRS"
    public_network_access_enabled = false
    is_hns_enabled = true

  
}

resource "azurerm_storage_data_lake_gen2_filesystem" "synapse_data_lake" {
    name = var.synapse_data_lake_name
    storage_account_id = azurerm_storage_account.synapse_adls.id
  
}


resource "azurerm_synapse_workspace" "synapse" {
    name = var.synapse_name
    resource_group_name = var.resource_group_name
    location = var.region
    storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.synapse_data_lake.id
    sql_administrator_login = var.sql_login
    sql_administrator_login_password = var.sql_password
    managed_resource_group_name = var.managed_resource_group_name
    managed_virtual_network_enabled = true

  
}
