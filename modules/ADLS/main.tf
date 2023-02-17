resource "azurerm_storage_account" "adls_001" {
    name = var.adls_001_name
    resource_group_name = var.resource_group_name
    location = var.region
    account_tier = "Standard"
    account_replication_type = "GZRS"
    public_network_access_enabled = false
    is_hns_enabled = true

    # network_rules {
    #     default_action = "Deny"
    #     ip_rules = [var.adls_001_public_ip]
    #     bypass = [ "Logging","Metrics","AzureServices" ]
    # }

  
}

# resource "azurerm_storage_container" "adls_001_container" {
#     name = var.adls_001_container_name
#     storage_account_name = azurerm_storage_account.adls_001.name
#     container_access_type = "blob"

  
# }


# resource "azurerm_storage_blob" "adls_001_blob" {
#     name = var.adls_001_blob_name
#     storage_account_name = azurerm_storage_account.adls_001.name
#     storage_container_name = azurerm_storage_container.adls_001_container.name
#     type = "Block"
  
# }



#DFS

resource "azurerm_storage_data_lake_gen2_filesystem" "dfs" {
    name = var.dfs_name
    storage_account_id = azurerm_storage_account.adls_001.id
  
}




