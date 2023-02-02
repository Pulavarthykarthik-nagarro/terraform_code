resource "azurerm_databricks_workspace" "adb_private_endpoint" {
    name = var.adb_private_endpoint_name
    resource_group_name = var.resource_group_name
    location = var.region
    sku = var.sku
    public_network_access_enabled = false
    managed_resource_group_name = var.managed_resource_group_adb_name
    custom_parameters {
        no_public_ip = true
        virtual_network_id =  var.virtual_network_id_adb
        private_subnet_name = var.private_subnet_container_name
        public_subnet_name = var.public_subnet_host_name
        public_subnet_network_security_group_association_id = var.public_subnet_host_network_security_group_association_id
        private_subnet_network_security_group_association_id = var.private_subnet_container_network_security_group_association_id
        
    }
  
}