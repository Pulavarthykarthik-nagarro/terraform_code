
#General Variables
variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}




#Shared Vnet Variables

variable "virtual_network_shared_name" {
    type = string
    description = "Name of the Shared Virtual Network"
  
}


variable "cidr_block_shared" {
    type = string
    description = "CIDR Block for Shared Virtual Network"
  
}


#Private End Point Variables

variable "subnet_private_endpoint_name" {
    type = string
    description = "Name of the Subnet for Private Endpoint"
  
}


variable "cidr_private_endpoint_subnet" {
    type = string
    description = "CIDR Block for Private Endpoint Subnet"
  
}


variable "nsg_subnet_private_endpoint_id" {
    type = string
    description = "NSG ID for Private Endpoint Subnet"
  
}

#Data Gateway Variables

variable "subnet_data_gateway_name" {
    type = string
    description = "Name of the Data Gateway Subnet"
  
}

variable "cidr_data_gateway_subnet" {
    type = string
    description = "CIDR Block for Data Gateway Subnet"
  
}

variable "nsg_subnet_data_gateway_id" {
    type = string
    description = "NSG ID for Data Gateway Subnet"
  
}

# VM in Data Gateway variables
# variable "nic_data_gateway_vm_1_name" {
#     type = string
#     description = "Name of the NIC for First VM in Data Gateway Subnet"
  
# }

# variable "public_ip_data_gateway_vm_1_name" {
#     type = string
#     description = "Name of the Public Ip for First VM in Data Gateway Subnet"
  
# }


# variable "nic_data_gateway_vm_2_name" {
#     type = string
#     description = "Name of the NIC for Second VM in Data Gateway Subnet"
  
# }

# variable "public_ip_data_gateway_vm_2_name" {
#     type = string
#     description = "Name of the Public Ip for Second VM in Data Gateway Subnet"
  
# }

# #ADF NIC Variable for private endpoint

# variable "nic_adf_private_endpoint_name" {
#     type = string
#     description = "Name of the NIC for ADF Private Endpoint"
  
# }

# #SQL NIC Variable for private endpoint

# variable "nic_sqlserver_private_endpoint_name" {
#     type = string
#     description = "Name of the NIC for SQL Server Private Endpoint"
  
# }

# # Vnet variables for ADB

# variable "virtual_network_adb_name" {
#     type = string
#     description = "Name of the Azure DataBricks Vnet"
  
# }


# variable "cidr_block_adb" {
#     type = string
#     description = "CIDR Block for Azure DataBricks Vnet"
  
# }

# #ADB Container Subnet Variables

# variable "subnet_container_adb_name" {
#     type = string
#     description = "Name of the Container Subnet for Azure Databricks"
  
# }


# variable "cidr_subnet_container_adb" {
#     type = string
#     description = "CIDR Block for Azure Databricks Container Subnet"
  
# }


# variable "delegation_subnet_container_adb_name" {
#     type = string
#     description = "Delegation Name for the Azure Databricks Container Subnet"
  
# }


# variable "nsg_subnet_container_adb_id" {
#     type = string
#     description = "NSG ID for Azure Databricks Container Subnet"
  
# }


# #ADB Host Subnet Variables

# variable "subnet_host_adb_name" {
#     type = string
#     description = "Name of the Host Subnet for Azure Databricks"
  
# }


# variable "cidr_subnet_host_adb" {
#     type = string
#     description = "CIDR Block for Azure Databricks Host Subnet"
  
# }


# variable "delegation_subnet_host_adb_name" {
#     type = string
#     description = "Delegation Name for the Azure Databricks Host Subnet"
  
# }

# variable "nsg_subnet_host_adb_id" {
#     type = string
#     description = "NSG ID for Azure Databricks Host Subnet"
  
# }

# # NIC for ADB

# variable "nic_adb_private_endpoint_name" {
#     type = string
#     description = "Name of the NIC for ADB Private Endpoint"
  
# }
