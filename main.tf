terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.39.1"
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
  cidr_block_shared = var.cidr_block_shared

  #Subnets

  subnet_private_endpoint_name = var.subnet_private_endpoint_name
  subnet_data_gateway_name = var.subnet_data_gateway_name



  #CIDR

  cidr_private_endpoint_subnet = var.cidr_private_endpoint_subnet
  cidr_data_gateway_subnet = var.cidr_data_gateway_subnet

  #NSG Association

  nsg_subnet_private_endpoint_id = module.security.nsg_subnet_private_endpoint_id
  nsg_subnet_data_gateway_id =  module.security.nsg_subnet_data_gateway_id


  #Nic

  nic_adf_private_endpoint_name = var.nic_adf_private_endpoint_name



  
}


module "security" {
  source = "./modules/NSG"
  
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  


  nsg_private_endpoint_subnet_name = var.nsg_private_endpoint_subnet_name
  nsg_data_gateway_subnet_name = var.nsg_data_gateway_subnet_name


  


}

module "privateendpoints" {
  source = "./modules/PrivateEndpoints"
  private_endpoint_adf_name = var.private_endpoint_adf_name
  resource_group_name = module.network.resource_group_name
  region = module.network.region
  private_endpoint_subnet_id = module.network.private_endpoint_subnet_id
  virtual_network_shared_id = module.network.virtual_network_shared_id



  private_service_connection_adf_name = var.private_service_connection_adf_name
  private_connection_resource_id_adf = module.datafactory.private_connection_resource_id_adf




  dns_network_link_adf_name = var.dns_network_link_adf_name



  dns_a_adf_name = var.dns_a_adf_name


 # NIC
  nic_adf_id = module.network.nic_adf_id


  
}



module "datafactory" {
  source = "./modules/NSG"
  
}


