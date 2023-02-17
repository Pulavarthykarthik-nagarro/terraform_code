
# Common Variables

variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}

variable "region" {
    type = string
    description = "Region for Deployment"
  
}



variable "adb_name" {
    type = string
    description = "Name of the Azure Databricks Workspace"
  
}



variable "adb_sku" {
    type = string
    description = "Pricing Tier of the Azure Databricks Workspace"
  
}


variable "adb_managed_resource_group_name" {
    type = string
    description = "Name of the resource group where Azure should place the managed Databricks resources"
  
}

variable "adb_virtual_network_id" {
    type = string
    description = "ID of the ADB Virtual Network"
  
}


variable "container_subnet_name" {
    type = string
    description = "Name of the Container Subnet"
  
}


variable "host_subnet_name" {
    type = string
    description = "Name of the Host Subnet"
  
}

variable "container_subnet_network_security_group_association_id" {
    type = string
    description = "Id of the ADB Public Subnet Network Security Group "
  
}

variable "host_subnet_network_security_group_association_id" {
    type = string
    description = "Id of the ADB Private Subnet Network Security Group "
  
}
