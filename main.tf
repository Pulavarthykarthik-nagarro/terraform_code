terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.39.1"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}


# VNet Module

module "network" {
  source = "./modules/Vnet"
  #depends_on = []

  resource_group_name = var.resource_group_name
  region = var.region
  
  virtual_network_shared_name = var.virtual_network_shared_name
  adb_virtual_network_name = var.adb_virtual_network_name


  cidr_block_shared = var.cidr_block_shared

  adb_cidr_block = var.adb_cidr_block


  # Vnet peering

  adb_shared_vnet_peering_name = var.adb_shared_vnet_peering_name

  #Subnets

  subnet_private_endpoint_name = var.subnet_private_endpoint_name
  subnet_data_gateway_name = var.subnet_data_gateway_name

  # ADB Private Subnet
  adb_container_subnet_name = var.adb_container_subnet_name

  # ADB Host Subnet
  adb_host_subnet_name = var.adb_host_subnet_name



  #CIDR

  cidr_private_endpoint_subnet = var.cidr_private_endpoint_subnet
  cidr_data_gateway_subnet = var.cidr_data_gateway_subnet

  cidr_adb_container_subnet = var.cidr_adb_container_subnet

  cidr_adb_host_subnet = var.cidr_adb_host_subnet


  #Delegation of ADB

  delegation_adb_container_subnet_name = var.delegation_adb_container_subnet_name

  delegation_adb_host_subnet_name = var.delegation_adb_host_subnet_name

  #NSG Association

  nsg_private_endpoint_subnet_id = module.security.nsg_private_endpoint_subnet_id
  nsg_data_gateway_subnet_id =  module.security.nsg_data_gateway_subnet_id
  nsg_adb_id = module.security.nsg_adb_id
 


  #Nic

  # nic_adf_private_endpoint_name = var.nic_adf_private_endpoint_name
  # nic_sqlserver_private_endpoint_name = var.nic_sqlserver_private_endpoint_name
  # nic_adb_private_endpoint_name = var.nic_adb_private_endpoint_name

  nic_vm_001_name = var.nic_vm_001_name

  nic_vm_002_name = var.nic_vm_002_name
  




  
}


module "security" {
  source = "./modules/NSG"
  
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  


  nsg_private_endpoint_subnet_name = var.nsg_private_endpoint_subnet_name
  nsg_data_gateway_subnet_name = var.nsg_data_gateway_subnet_name
  nsg_adb_name = var.nsg_adb_name
  

  


}

module "privateendpoints" {
  source = "./modules/PrivateEndpoints"
  
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  
  virtual_network_shared_id = module.network.virtual_network_shared_id
  adb_virtual_network_id = module.network.adb_virtual_network_id



  private_endpoint_subnet_id = module.network.private_endpoint_subnet_id
  adb_container_subnet_id = module.network.adb_container_subnet_id
  



  adf_private_endpoint_name = var.adf_private_endpoint_name
  sqlserver_private_endpoint_name = var.sqlserver_private_endpoint_name
  adb_private_endpoint_name = var.adb_private_endpoint_name
  blob_private_endpoint_name = var.blob_private_endpoint_name
  dfs_private_endpoint_name = var.dfs_private_endpoint_name
  synapse_private_endpoint_name = var.synapse_private_endpoint_name





  adf_private_service_connection_name = var.adf_private_service_connection_name
  sqlserver_private_service_connection_name = var.sqlserver_private_service_connection_name
  adb_private_service_connection_name = var.adb_private_service_connection_name
  blob_private_service_connection_name = var.blob_private_service_connection_name
  dfs_private_service_connection_name = var.dfs_private_service_connection_name
  synapse_private_service_connection_name = var.synapse_private_service_connection_name





  adf_private_connection_resource_id = module.datafactory.adf_private_connection_resource_id
  sqlserver_private_connection_resource_id = module.sqldb.sqlserver_private_connection_resource_id
  adb_private_connection_resource_id = module.adb.adb_private_connection_resource_id
  adls_private_connection_resource_id = module.adls.adls_private_connection_resource_id
  synapse_private_connection_resource_id = module.synapse.synapse_private_connection_resource_id





  adf_dns_network_link_name = var.adf_dns_network_link_name
  sqlserver_dns_network_link_name = var.sqlserver_dns_network_link_name
  adb_dns_network_link_name = var.adb_dns_network_link_name
  blob_dns_network_link_name = var.blob_dns_network_link_name
  dfs_dns_network_link_name = var.dfs_dns_network_link_name
  synapse_dns_network_link_name = var.synapse_dns_network_link_name
  



  adf_dns_a_record_name = var.adf_dns_a_record_name
  sql_dns_a_record_name = var.sql_dns_a_record_name
  adb_dns_a_record_name = var.adb_dns_a_record_name
  blob_dns_a_record_name = var.blob_dns_a_record_name
  dfs_dns_a_record_name = var.dfs_dns_a_record_name
  synapse_dns_a_record_name = var.synapse_dns_a_record_name



  
}



module "datafactory" {
  source = "./modules/ADF"
  adf_name = var.adf_name
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  azure_ir_name = var.azure_ir_name



  sqlserver_managed_private_endpoint_name = var.sqlserver_managed_private_endpoint_name
  adb_managed_private_endpoint_name = var.adb_managed_private_endpoint_name
  adls_managed_private_endpoint_name = var.adls_managed_private_endpoint_name
  synapse_managed_private_endpoint_name = var.synapse_managed_private_endpoint_name


  sqlserver_private_connection_resource_id = module.sqldb.sqlserver_private_connection_resource_id
  adb_private_connection_resource_id = module.adb.adb_private_connection_resource_id
  adls_private_connection_resource_id = module.adls.adls_private_connection_resource_id
  synapse_private_connection_resource_id = module.synapse.synapse_private_connection_resource_id
  

  
}


module "sqldb" {
  source = "./modules/SQLDB"
  sqlserver_name = var.sqlserver_name
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  sqlserver_version = var.sqlserver_version
  sqlserver_administrator_login = var.sqlserver_administrator_login
  sqlserver_administrator_login_password = var.sqlserver_administrator_login_password


  # SQL Database

  sqldb_name = var.sqldb_name
  sqldb_sku_name = var.sqldb_sku_name
  sqldb_size_db = var.sqldb_size_db


  
}


module "adb" {

  source = "./modules/ADB"

  adb_name = var.adb_name
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  adb_sku = var.adb_sku
  adb_managed_resource_group_name = var.adb_managed_resource_group_name
  adb_virtual_network_id = module.network.adb_virtual_network_id
  container_subnet_name = module.network.container_subnet_name
  host_subnet_name = module.network.host_subnet_name
  host_subnet_network_security_group_association_id = module.network.host_subnet_network_security_group_association_id
  container_subnet_network_security_group_association_id = module.network.container_subnet_network_security_group_association_id



  
}


module "vm" {

  source = "./modules/vm"
 
  
  resource_group_name = module.network.resource_group_name
  region = module.network.region

  # Data gateway VM 01

  vm_001_name = var.vm_001_name
  vm_001_size = var.vm_001_size
  vm_001_admin_username = var.vm_001_admin_username
  vm_001_admin_password = var.vm_001_admin_password
  vm_001_nic_id = module.network.vm_001_nic_id
  vm_001_computer_name = var.vm_001_computer_name

  # Data gateway VM 02

  vm_002_name = var.vm_002_name
  vm_002_size = var.vm_002_size
  vm_002_admin_username = var.vm_002_admin_username
  vm_002_admin_password = var.vm_002_admin_password
  vm_002_nic_id = module.network.vm_002_nic_id
  vm_002_computer_name = var.vm_002_computer_name
  
}


module "adls" {

  source = "./modules/ADLS"
  resource_group_name = module.network.resource_group_name
  region = module.network.region

  adls_001_name = var.adls_001_name
  adls_001_container_name = var.adls_001_container_name
  adls_001_blob_name = var.adls_001_blob_name
  adls_001_public_ip = var.adls_001_public_ip

  dfs_name = var.dfs_name


  
}


module "synapse" {
  source = "./modules/AS"
  synapse_adls_name = var.synapse_adls_name
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  synapse_data_lake_name = var.synapse_data_lake_name
  synapse_name = var.synapse_name
  sql_login = var.sql_login
  sql_password = var.sql_password
  managed_resource_group_name = var.managed_resource_group_name

  
}