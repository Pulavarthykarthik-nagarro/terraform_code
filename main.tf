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
  nsg_adb_container_subnet_id = module.security.nsg_adb_container_subnet_id
  nsg_adb_host_subnet_id = module.security.nsg_adb_host_subnet_id


  #Nic

  nic_adf_private_endpoint_name = var.nic_adf_private_endpoint_name
  nic_sqlserver_private_endpoint_name = var.nic_sqlserver_private_endpoint_name
  nic_adb_private_endpoint_name = var.nic_adb_private_endpoint_name

  nic_vm_data_gateway_1_name = var.nic_vm_data_gateway_1_name

  nic_vm_data_gateway_2_name = var.nic_vm_data_gateway_2_name
  




  
}


module "security" {
  source = "./modules/NSG"
  
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  


  nsg_private_endpoint_subnet_name = var.nsg_private_endpoint_subnet_name
  nsg_data_gateway_subnet_name = var.nsg_data_gateway_subnet_name
  nsg_adb_container_subnet_name = var.nsg_adb_container_subnet_name
  nsg_adb_host_subnet_name = var.nsg_adb_host_subnet_name

  


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





  adf_private_service_connection_name = var.adf_private_service_connection_name
  sqlserver_private_service_connection_name = var.sqlserver_private_service_connection_name
  adb_private_service_connection_name = var.adb_private_service_connection_name




  adf_private_connection_resource_id = module.datafactory.adf_private_connection_resource_id
  sqlserver_private_connection_resource_id = module.sqldb.sqlserver_private_connection_resource_id
  adb_private_connection_resource_id = module.adb.adb_private_connection_resource_id




  adf_dns_network_link_name = var.adf_dns_network_link_name
  sqlserver_dns_network_link_name = var.sqlserver_dns_network_link_name
  adb_dns_network_link_name = var.adb_dns_network_link_name



  adf_dns_a_record_name = var.adf_dns_a_record_name
  sql_dns_a_record_name = var.sql_dns_a_record_name
  adb_dns_a_record_name = var.adb_dns_a_record_name


 # NIC
  # nic_adf_id = module.network.nic_adf_id


  
}



module "datafactory" {
  source = "./modules/ADF"
  adf_name = var.adf_name
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  azure_ir_name = var.azure_ir_name



  sqlserver_managed_private_endpoint_name = var.sqlserver_managed_private_endpoint_name
  adb_managed_private_endpoint_name = var.adb_managed_private_endpoint_name


  sqlserver_private_connection_resource_id = module.sqldb.sqlserver_private_connection_resource_id
  adb_private_connection_resource_id = module.adb.adb_private_connection_resource_id
  

  
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

  vm_data_gateway_1_name = var.vm_data_gateway_1_name
  vm_data_gateway_1_size = var.vm_data_gateway_1_size
  vm_data_gateway_1_admin_username = var.vm_data_gateway_1_admin_username
  vm_data_gateway_1_admin_password = var.vm_data_gateway_1_admin_password
  vm_data_gateway_1_nic_id = module.network.vm_data_gateway_1_nic_id
  vm_data_gateway_1_computer_name = var.vm_data_gateway_1_computer_name

  # Data gateway VM 02

  vm_data_gateway_2_name = var.vm_data_gateway_2_name
  vm_data_gateway_2_size = var.vm_data_gateway_2_size
  vm_data_gateway_2_admin_username = var.vm_data_gateway_2_admin_username
  vm_data_gateway_2_admin_password = var.vm_data_gateway_2_admin_password
  vm_data_gateway_2_nic_id = module.network.vm_data_gateway_2_nic_id
  vm_data_gateway_2_computer_name = var.vm_data_gateway_2_computer_name
  
}