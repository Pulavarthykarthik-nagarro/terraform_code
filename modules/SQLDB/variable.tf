variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}

variable "pvt_endpt_sqlserver_name" {
    type = string
    description = "Name of the SQL Server"
  
}


variable "pvt_endpt_sqlserver_version" {
    type = number
    description = "Version of the SQL Server"
  
}


variable "pvt_endpt_sqldb_name" {
    type = string
    description = "Name of the SQL Database"
  
}
