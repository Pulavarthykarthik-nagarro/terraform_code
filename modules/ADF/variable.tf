variable "pvt_endpt_adf_name" {
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


variable "adf_pvt_endpt_sqldb_name" {
    type = string
    description = "Name of the ADF Managed Network Private Endpoint Connected to SQL DB"
  
}


variable "adf_pvt_endpt_sqldb_id" {
    type = string
    description = "ID of the SQL Db"
  
}