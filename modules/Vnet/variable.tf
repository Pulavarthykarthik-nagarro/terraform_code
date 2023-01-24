variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}

variable "tags_common" {
}


variable "virtual_network_name_shared" {
    type = string
    description = "Name of the Shared Virtual Network"
  
}


variable "cidr_block_shared" {
    type = string
    description = "CIDR Block for Shared Virtual Network"
  
}



variable "subnet_endpoint_name" {
    type = string
    description = "Name of the Subnet for Private Endpoint"
  
}


variable "cidr_endpoint_subnet" {
    type = string
    description = "CIDR Block for Private Endpoint Subnet"
  
}


variable "nsg_endpoint_subnet_id" {
    type = string
    description = "NSG ID for Private Endpoint Subnet"
  
}


variable "subnet_data_gateway_name" {
    type = string
    description = "Name of the Data Gateway Subnet"
  
}

variable "cidr_data_gateway_subnet" {
    type = string
    description = "CIDR Block for Data Gateway Subnet"
  
}

variable "nsg_data_gateway_subnet" {
    type = string
    description = "Name of the NSG for Data Gateway Subnet"
  
}


variable "nic_data_gateway_vm_name_one" {
    type = string
    description = "Name of the NIC for First VM in Data Gateway Subnet"
  
}

variable "public_ip_data_gateway_vm_name_one" {
    type = string
    description = "Name of the Public Ip for First VM in Data Gateway Subnet"
  
}


variable "nic_data_gateway_vm_name_two" {
    type = string
    description = "Name of the NIC for Second VM in Data Gateway Subnet"
  
}

variable "public_ip_data_gateway_vm_name_two" {
    type = string
    description = "Name of the Public Ip for Second VM in Data Gateway Subnet"
  
}


variable "nic_adf_pvt_endpt_name" {
    type = string
    description = "Name of the NIC for ADF Private Endpoint"
  
}

variable "nic_sqlserver_pvt_endpt_name" {
    type = string
    description = "Name of the NIC for SQL Server Private Endpoint"
  
}

