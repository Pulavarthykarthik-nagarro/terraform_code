variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}

variable "sqlserver_name" {
    type = string
    description = "Name of the SQL Server"
  
}


variable "sqlserver_version" {
    type = string
    description = "Version of the SQL Server"
  
}


variable "sqldb_name" {
    type = string
    description = "Name of the SQL Database"
  
}


variable "sqlserver_administrator_login" {
    type = string
    description = "SQL Server Login ID"
  
}


variable "sqlserver_administrator_login_password" {
    type = string
    description = "SQL Server Login Password"
  
}

variable "sqldb_sku_name" {
    type = string
    description = "SQL DB SKU Name"
  
}

variable "sqldb_size_db" {
    type = number
    description = "SQL DB Size in GB"
  
}