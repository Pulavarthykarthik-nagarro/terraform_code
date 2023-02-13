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

variable "adf_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for ADF"

  
}



variable "adf_private_endpoint_name" {
    type = string
    description = "Name of the ADF Private EndPoint"

  
}

variable "region" {
    type = string
    description = "Region for Deployment"
  
}


variable "adf_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for ADF"
  
}


variable "adf_private_connection_resource_id" {
    type = string
    description = "ID for connecting ADF with Private Endpoint"
  
}


# variable "adf_subresource_name" {
#     type = string
#     description = "Name of the Subresource"
  
# }


variable "adf_dns_a_record_name" {
    type = string
    description = "Name of the Subresource"
  
}



# variable "nic_adf_id" {
#     type = string
#     description = "NIC Id of ADF"
  
# }


#Variable of Private Endpoint for SQL DB

# variable "dns_zone_sqldb_name" {
#     type = string
#     description = "Name of the SQLDB DNS Zone"
  
# }

variable "sqlserver_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for SQLDB"

  
}


variable "sqlserver_private_endpoint_name" {
    type = string
    description = "Name of the SQL Server Private EndPoint"

  
}



variable "sqlserver_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for SQL Server"
  
}



variable "sqlserver_private_connection_resource_id" {
    type = string
    description = "ID for connecting Private Endpoint with SQL Server"
  
}


variable "sql_dns_a_record_name" {
    type = string
    description = "Name of the Subresource"
  
}




# #Variable of Private Endpoint for ADB


variable "adb_private_endpoint_name" {
    type = string
    description = "Name of the ADB Private EndPoint"

  
}


variable "adb_container_subnet_id" {
    type = string
    description = "Id of the Container Subnet to which ADB is connected"
  
}


variable "adb_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for ADB"
  
}

variable "adb_private_connection_resource_id" {
    type = string
    description = "ID for connecting Private Endpoints with Azure Databricks"
  
}


variable "adb_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for ADB"

  
}

variable "adb_virtual_network_id" {
    type = string
    description = "Id of the ADB Virtual Network"

  
}

variable "adb_dns_a_record_name" {
    type = string
    description = "Name of the Subresource"
  
}



# variable "nic_id_adb" {
#     type = string
#     description = "NIC Id of ADB"
  
# }
