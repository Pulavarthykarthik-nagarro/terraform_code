#Variable of Private Endpoint for ADF

# variable "dns_zone_adf_name" {
#     type = string
#     description = "Name of the ADF DNS Zone"
  
# }

# Common Variables

variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}

variable "virtual_network_shared_id" {
    type = string
    description = "Id of the Private End Point Virtual Network"

  
}

variable "private_endpoint_subnet_id" {
    type = string
    description = "Id of the Private End Point Subnet"

  
}


# Azure Data Factory Private End point Variables

variable "dns_network_link_adf_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for ADF"

  
}



variable "private_endpoint_adf_name" {
    type = string
    description = "Name of the ADF Private EndPoint"

  
}

variable "region" {
    type = string
    description = "Region for Deployment"
  
}


variable "private_service_connection_adf_name" {
    type = string
    description = "Private Service Connection Name for ADF"
  
}


variable "private_connection_resource_id_adf" {
    type = string
    description = "ID for connecting ADF with Private Endpoint"
  
}


# variable "adf_subresource_name" {
#     type = string
#     description = "Name of the Subresource"
  
# }


variable "dns_a_adf_name" {
    type = string
    description = "Name of the Subresource"
  
}



variable "nic_adf_id" {
    type = string
    description = "NIC Id of ADF"
  
}


#Variable of Private Endpoint for SQL DB

# variable "dns_zone_sqldb_name" {
#     type = string
#     description = "Name of the SQLDB DNS Zone"
  
# }

variable "dns_network_link_sqlserver_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for SQLDB"

  
}


variable "private_endpoint_sqlserver_name" {
    type = string
    description = "Name of the SQL Server Private EndPoint"

  
}



variable "private_service_connection_sqlserver_name" {
    type = string
    description = "Private Service Connection Name for SQL Server"
  
}



variable "private_connection_resource_id_sqlserver" {
    type = string
    description = "ID for connecting Private Endpoint with SQL Server"
  
}


variable "dns_a_sqlserver_name" {
    type = string
    description = "Name of the Subresource"
  
}


variable "nic_id_sqlserver" {
    type = string
    description = "NIC of SQL Server"
  
}


#Variable of Private Endpoint for ADB


variable "private_endpoint_adb_name" {
    type = string
    description = "Name of the ADB Private EndPoint"

  
}


variable "subnet_id_private_endpoint_adb" {
    type = string
    description = "Id of the Private Endpoint Subnet to which ADB is connected"
  
}


variable "private_service_connection_adb_name" {
    type = string
    description = "Private Service Connection Name for ADB"
  
}

variable "private_connection_resource_id_adb" {
    type = string
    description = "ID for connecting Private Endpoints with Azure Databricks"
  
}


variable "dns_network_link_adb_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for ADB"

  
}

variable "vnet_dns_network_link_adb_id" {
    type = string
    description = "Id of the ADB Virtual Network"

  
}

variable "dns_a_adb_name" {
    type = string
    description = "Name of the Subresource"
  
}



variable "nic_id_adb" {
    type = string
    description = "NIC Id of ADB"
  
}
