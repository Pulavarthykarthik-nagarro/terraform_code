variable "adf_name" {
    type = string
    description = "Name of the ADF"
  
}

variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}

variable "region" {
    type = string
    description = "Region for Deployment"
  
}



variable "azure_ir_name" {
    type = string
    description = "Name of the Azure Integration Runtime"
  
}


variable "sqlserver_managed_private_endpoint_name" {
    type = string
    description = "Name of the ADF Managed Network Private Endpoint Connected to SQL DB"
  
}


variable "sqlserver_private_connection_resource_id" {
    type = string
    description = "ID of the SQL Db"
  
}

variable "adb_managed_private_endpoint_name" {
    type = string
    description = "Name of the ADF Managed Network Private Endpoint Connected to Azure Databricks"
  
}

variable "adb_private_connection_resource_id" {
    type = string
    description = "ID of the Azure Databricks"
  
}