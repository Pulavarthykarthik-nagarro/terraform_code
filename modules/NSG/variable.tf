#General Variables

variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}




#NSG Variables for private endpoints subnet

variable "nsg_private_endpoint_subnet_name" {
    type = string
    description = "Name of the NSG on Private endpoint subnet"
  
}

#NSG Variables for Data Gateway subnet

variable "nsg_data_gateway_subnet_name" {
    type = string
    description = "Name of the NSG on Data Gateway Subnet"
  
}


# #NSG Variables for Azure Databricks Container Subnet

# variable "nsg_adb_container_subnet_name" {
#     type = string
#     description = "Name of the NSG for Azure Databricks Container Subnet"
  
# }


# #NSG Variables for Azure Databricks Host Subnet

# variable "nsg_adb_host_subnet_name" {
#     type = string
#     description = "Name of the NSG for Azure Databricks Host Subnet"
  
# }