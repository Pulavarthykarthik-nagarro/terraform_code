
# Common Variables

variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}

variable "region" {
    type = string
    description = "Region for Deployment"
  
}



variable "adb_private_endpoint_name" {
    type = string
    description = "Name of the Azure Databricks Workspace"
  
}



variable "sku" {
    type = string
    description = "Pricing Tier of the Azure Databricks Workspace"
  
}


variable "managed_resource_group_adb_name" {
    type = string
    description = "Name of the resource group where Azure should place the managed Databricks resources"
  
}

variable "virtual_network_id_adb" {
    type = string
    description = "ID of the ADB Virtual Network"
  
}


variable "private_subnet_container_name" {
    type = string
    description = "Name of the Container Subnet"
  
}


variable "public_subnet_host_name" {
    type = string
    description = "Name of the Host Subnet"
  
}

variable "public_subnet_host_network_security_group_association_id" {
    type = string
    description = "Id of the Host Subnet Network Security Group "
  
}

variable "private_subnet_container_network_security_group_association_id" {
    type = string
    description = "Id of the Container Subnet Network Security Group "
  
}