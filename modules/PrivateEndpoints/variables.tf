#Variable of Private Endpoint for ADF

# variable "dns_zone_adf_name" {
#     type = string
#     description = "Name of the ADF DNS Zone"
  
# }


variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "adf_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for ADF"

  
}

variable "adf_dns_network_link_vnet_id" {
    type = string
    description = "Id of the Virtual Network"

  
}


variable "adf_pvt_endpt" {
    type = string
    description = "Name of the ADF Private EndPoint"

  
}

variable "region" {
    type = string
    description = "Region for Deployment"
  
}


variable "adf_subnet_id" {
    type = string
    description = "Id of the Subnet in which ADF is present"
  
}

variable "adf_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for ADF"
  
}


variable "adf_resource_id" {
    type = string
    description = "ID of the ADF"
  
}


variable "adf_subresource_name" {
    type = string
    description = "Name of the Subresource"
  
}


variable "adf_dns_a_name" {
    type = string
    description = "Name of the Subresource"
  
}



variable "adf_nic_id" {
    type = string
    description = "NIC of ADF"
  
}


#Variable of Private Endpoint for SQL DB

# variable "dns_zone_sqldb_name" {
#     type = string
#     description = "Name of the SQLDB DNS Zone"
  
# }

variable "sqlserver_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for SQLDB"

  
}


variable "sqlserver_pvt_endpt_name" {
    type = string
    description = "Name of the SQL Server Private EndPoint"

  
}

variable "sqlserver_subnet_id" {
    type = string
    description = "Id of the Subnet in which SQL Server is present"
  
}


variable "sqlserver_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for SQL Server"
  
}



variable "sqlserver_resource_id" {
    type = string
    description = "ID of the SQL Server"
  
}


variable "sqlserver_dns_a_name" {
    type = string
    description = "Name of the Subresource"
  
}


variable "sqlserver_nic_id" {
    type = string
    description = "NIC of SQL Server"
  
}
