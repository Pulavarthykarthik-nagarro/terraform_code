variable "adf_private_endpoint_name" {
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


variable "adf_private_endpoint_sqlserver_name" {
    type = string
    description = "Name of the ADF Managed Network Private Endpoint Connected to SQL DB"
  
}


variable "adf_private_endpoint_sqldb_id" {
    type = string
    description = "ID of the SQL Db"
  
}

variable "adf_private_endpoint_adb_name" {
    type = string
    description = "Name of the ADF Managed Network Private Endpoint Connected to Azure Databricks"
  
}

variable "adf_private_endpoint_adb_id" {
    type = string
    description = "ID of the Azure Databricks"
  
}