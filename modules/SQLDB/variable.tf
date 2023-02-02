variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}

variable "sqlserver_private_endpoint_name" {
    type = string
    description = "Name of the SQL Server"
  
}


variable "sqlserver_private_endpoint_version" {
    type = number
    description = "Version of the SQL Server"
  
}


variable "sqldb_private_endpoint_name" {
    type = string
    description = "Name of the SQL Database"
  
}
