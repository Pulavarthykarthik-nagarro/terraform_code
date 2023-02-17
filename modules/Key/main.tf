data "azurerm_client_config" "current" {}



resource "azurerm_key_vault" "keyvalut" {
    name = var.keyvalut_name
    resource_group_name = var.resource_group_name
    location = var.region
    tenant_id = data.azurerm_client_config.current.tenant_id
    soft_delete_retention_days = 7
    sku_name = "standard"
    purge_protection_enabled = true
    
    access_policy{

        tenant_id = data.azurerm_client_config.current.tenant_id
        object_id = data.azurerm_client_config.current.object_id

        secret_permissions = [ "Get","Set" ]





    }

  
}