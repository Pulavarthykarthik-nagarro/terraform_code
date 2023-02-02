#Network Variables

#General Variables
variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}





variable "virtual_network_shared_name" {
    type = string
    description = "Name of the Shared Virtual Network"
  
}


variable "cidr_block_shared" {
    type = string
    description = "CIDR Block for Shared Virtual Network"
  
}

#Private endpoints subnet Variables


variable "subnet_private_endpoint_name" {
    type = string
    description = "Name of the Subnet for Private Endpoint"
  
}


variable "cidr_private_endpoint_subnet" {
    type = string
    description = "CIDR Block for Private Endpoint Subnet"
  
}


variable "nsg_private_endpoint_subnet_name" {
    type = string
    description = "Name of the NSG on Private endpoint subnet"
  
}

# Data Gateway Subnet Variables

variable "subnet_data_gateway_name" {
    type = string
    description = "Name of the Data Gateway Subnet"
  
}


variable "cidr_data_gateway_subnet" {
    type = string
    description = "CIDR Block for Data Gateway Subnet"
  
}




variable "nsg_data_gateway_subnet_name" {
    type = string
    description = "Name of the NSG on Data Gateway Subnet"
  
}





# Azure Data Factory Variables



variable "private_endpoint_adf_name" {
    type = string
    description = "Name of the ADF Private EndPoint"

  
}


variable "private_service_connection_adf_name" {
    type = string
    description = "Private Service Connection Name for ADF"
  
}


variable "dns_network_link_adf_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for ADF"

  
}


variable "dns_a_adf_name" {
    type = string
    description = "Name of the Subresource"
  
}




variable "nic_adf_private_endpoint_name" {
    type = string
    description = "Name of the NIC for ADF Private Endpoint"
  
}