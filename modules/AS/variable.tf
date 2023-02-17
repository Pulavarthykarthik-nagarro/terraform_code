variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}

variable "region" {
    type = string
    description = "Region for Deployment"
  
}


variable "synapse_adls_name" {
    type = string
    description = "Name of the Storage Account"
  
}


variable "synapse_data_lake_name" {
    type = string
    description = "Name of the Synapse Data Lake Gen2 File System "
  
}


variable "synapse_name" {
    type = string
    description = "Name of the Azure Synapse"
  
}


variable "sql_login" {
    type = string
    description = "SQL Login"
  
}

variable "sql_password" {
    type = string
    description = "SQL Password"
  
}

variable "managed_resource_group_name" {
    type = string
    description = "Name of the Managed resource group"
  
}