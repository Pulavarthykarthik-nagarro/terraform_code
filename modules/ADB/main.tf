resource "azurerm_databricks_workspace" "adb" {
    name = var.adb_name
    resource_group_name = var.resource_group_name
    location = var.region
    sku = var.adb_sku
    public_network_access_enabled = true
    managed_resource_group_name = var.adb_managed_resource_group_name
    
    custom_parameters {
        no_public_ip = true
        virtual_network_id =  var.adb_virtual_network_id
        private_subnet_name = var.container_subnet_name
        public_subnet_name = var.host_subnet_name
        public_subnet_network_security_group_association_id = var.container_subnet_network_security_group_association_id
        private_subnet_network_security_group_association_id = var.host_subnet_network_security_group_association_id
        
    }
  
}