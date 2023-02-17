#Network Variables

#General Variables
variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}





variable "virtual_network_shared_name" {
    type = string
    description = "Name of the Shared Virtual Network"
  
}


variable "cidr_block_shared" {
    type = string
    description = "CIDR Block for Shared Virtual Network"
  
}

#Private endpoints subnet Variables


variable "subnet_private_endpoint_name" {
    type = string
    description = "Name of the Subnet for Private Endpoint"
  
}


variable "cidr_private_endpoint_subnet" {
    type = string
    description = "CIDR Block for Private Endpoint Subnet"
  
}


variable "nsg_private_endpoint_subnet_name" {
    type = string
    description = "Name of the NSG on Private endpoint subnet"
  
}

# Data Gateway Subnet Variables

variable "subnet_data_gateway_name" {
    type = string
    description = "Name of the Data Gateway Subnet"
  
}


variable "cidr_data_gateway_subnet" {
    type = string
    description = "CIDR Block for Data Gateway Subnet"
  
}




variable "nsg_data_gateway_subnet_name" {
    type = string
    description = "Name of the NSG on Data Gateway Subnet"
  
}





# Azure Data Factory Variables



variable "adf_private_endpoint_name" {
    type = string
    description = "Name of the ADF Private EndPoint"

  
}


variable "adf_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for ADF"
  
}


variable "adf_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for ADF"

  
}


variable "adf_dns_a_record_name" {
    type = string
    description = "ADF DNS A Record Name"
  
}



# variable "nic_adf_private_endpoint_name" {
#     type = string
#     description = "Name of the NIC for ADF Private Endpoint"
  
# }


variable "adf_name" {
    type = string
    description = "Name of the ADF"
  
}


variable "azure_ir_name" {
    type = string
    description = "Name of the Azure Integration Runtime"
  
}


# SQL Server Variables


variable "sqlserver_name" {
    type = string
    description = "Name of the SQL Server"
  
}

variable "sqlserver_version" {
    type = string
    description = "Version of the SQL Server"
  
}

variable "sqlserver_administrator_login" {
    type = string
    description = "SQL Server Login ID"
  
}


variable "sqlserver_administrator_login_password" {
    type = string
    description = "SQL Server Login Password"
  
}

variable "sqldb_name" {
    type = string
    description = "Name of the SQL Database"
  
}


variable "sqldb_sku_name" {
    type = string
    description = "SQL DB SKU Name"
  
}


variable "sqldb_size_db" {
    type = number
    description = "SQL DB Size in GB"
  
}



variable "sqlserver_private_endpoint_name" {
    type = string
    description = "Name of the SQL Server Private EndPoint"

  
}

variable "sqlserver_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for SQL Server"
  
}


variable "sqlserver_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for SQLDB"

  
}

variable "sql_dns_a_record_name" {
    type = string
    description = "SQL DNS A Record Name"
  
}

# variable "nic_sqlserver_private_endpoint_name" {
#     type = string
#     description = "Name of the NIC for SQL Server Private Endpoint"
  
# }


variable "sqlserver_managed_private_endpoint_name" {
    type = string
    description = "Name of the ADF Managed Network Private Endpoint Connected to SQL DB"
  
}



#ADB Variables

variable "adb_name" {
    type = string
    description = "Name of the Azure Databricks Workspace"
  
}


variable "adb_sku" {
    type = string
    description = "Pricing Tier of the Azure Databricks Workspace"
  
}


variable "adb_managed_resource_group_name" {
    type = string
    description = "Name of the resource group where Azure should place the managed Databricks resources"
  
}


variable "adb_virtual_network_name" {
    type = string
    description = "Name of the Azure DataBricks Vnet"
  
}

variable "adb_cidr_block" {
    type = string
    description = "CIDR Block for Azure DataBricks Vnet"
  
}

variable "adb_container_subnet_name" {
    type = string
    description = "Name of the Container Subnet for Azure Databricks"
  
}



variable "cidr_adb_container_subnet" {
    type = string
    description = "CIDR Block for Azure Databricks Container Subnet"
  
}

variable "delegation_adb_container_subnet_name" {
    type = string
    description = "Delegation Name for the Azure Databricks Container Subnet"
  
}


variable "nsg_adb_name" {
    type = string
    description = "Name of the NSG for Azure Databricks"
  
}


variable "adb_host_subnet_name" {
    type = string
    description = "Name of the Host Subnet for Azure Databricks"
  
}


variable "cidr_adb_host_subnet" {
    type = string
    description = "CIDR Block for Azure Databricks Host Subnet"
  
}

variable "delegation_adb_host_subnet_name" {
    type = string
    description = "Delegation Name for the Azure Databricks Host Subnet"
  
}

# variable "nsg_adb_host_subnet_name" {
#     type = string
#     description = "Name of the NSG for Azure Databricks Host Subnet"
  
# }


variable "adb_private_endpoint_name" {
    type = string
    description = "Name of the ADB Private EndPoint"

  
}



variable "adb_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for ADB"
  
}


variable "adb_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for ADB"

  
}

variable "adb_dns_a_record_name" {
    type = string
    description = "ADB DNS A Record Name"
  
}



variable "adb_managed_private_endpoint_name" {
    type = string
    description = "Name of the ADF Managed Network Private Endpoint Connected to Azure Databricks"
  
}

# variable "nic_adb_private_endpoint_name" {
#     type = string
#     description = "Name of the NIC for ADB Private Endpoint"
  
# }


# Vnet peering


variable "adb_shared_vnet_peering_name" {
    type = string
    description = "Name of the ADB Vnet and Shared Vnet Peering"
  
}



# Vm01

variable "vm_001_name" {
    type = string
    description = "Name of the First Virtual Machine in Data Gateway Subnet"
  
}


variable "vm_001_size" {
    type = string
    description = "Size of the First Virtual Machine in Data Gateway Subnet"
  
}


variable "vm_001_admin_username" {
    type = string
    description = "Username for VM Data Gateway 1"
  
}


variable "vm_001_admin_password" {
    type = string
    description = "Password for VM Data Gateway 1"
  
}



variable "nic_vm_001_name" {
    type = string
    description = "Name of the NIC for First VM in Data Gateway Subnet"
  
}


variable "vm_001_computer_name" {
    type = string
    description = "Computer Name of VM Data Gateway 1"
  
}


# Vm02

variable "vm_002_name" {
    type = string
    description = "Name of the Second Virtual Machine in Data Gateway Subnet"
  
}


variable "vm_002_size" {
    type = string
    description = "Size of the Second Virtual Machine in Data Gateway Subnet"
  
}


variable "vm_002_admin_username" {
    type = string
    description = "Username for VM Data Gateway 2"
  
}



variable "vm_002_admin_password" {
    type = string
    description = "Password for VM Data Gateway 2"
  
}



variable "nic_vm_002_name" {
    type = string
    description = "Name of the NIC for Second VM in Data Gateway Subnet"
  
}


variable "vm_002_computer_name" {
    type = string
    description = "Computer Name of VM Data Gateway 2"
  
}



# Storage account  and Blob variables


variable "adls_001_name" {
    type = string
    description = "Name of the Storage Account"
  
}





# variable "adls_001_container_name" {
#     type = string
#     description = "Name of the Container"
  
# }



# variable "adls_001_blob_name" {
#     type = string
#     description = "Name of the Blob"
  
# }



# variable "blob_private_endpoint_name" {
#     type = string
#     description = "Name of the Storage Blob Private EndPoint"

  
# }


# variable "blob_private_service_connection_name" {
#     type = string
#     description = "Private Service Connection Name for Storage Blob"
  
# }



# variable "blob_dns_network_link_name" {
#     type = string
#     description = "Name of the DNS Resolver Virtual Network Link for Storage Blob"

  
# }



# variable "blob_dns_a_record_name" {
#     type = string
#     description = "Blob DNS A Record Name"
  
# }



variable "adls_managed_private_endpoint_name" {
    type = string
    description = "Name of the ADF Managed Network Private Endpoint Connected to ADLS"
  
}


# variable "adls_001_public_ip" {
#     type = string
#     description = "Public IP of ADLS"
  
# }

variable "dfs_name" {
    type = string
    description = "Name of the distributed file system"
  
}


variable "dfs_private_endpoint_name" {
    type = string
    description = "Name of the dfs Private EndPoint"

  
}

variable "dfs_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for Storage Blob"
  
}


variable "dfs_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for dfs"

  
}


variable "dfs_dns_a_record_name" {
    type = string
    description = "dfs DNS A Record Name"
  
}


# Azure Synapse



# variable "synapse_adls_name" {
#     type = string
#     description = "Name of the Storage Account"
  
# }


# variable "synapse_data_lake_name" {
#     type = string
#     description = "Name of the Synapse Data Lake Gen2 File System "
  
# }

# variable "synapse_name" {
#     type = string
#     description = "Name of the Azure Synapse"
  
# }


# variable "sql_login" {
#     type = string
#     description = "SQL Login"
  
# }



# variable "sql_password" {
#     type = string
#     description = "SQL Password"
  
# }

# variable "managed_resource_group_name" {
#     type = string
#     description = "Name of the Managed resource group"
  
# }

# variable "synapse_private_endpoint_name" {
#     type = string
#     description = "Name of the Azure Synapse Private EndPoint"

  
# }

# variable "synapse_private_service_connection_name" {
#     type = string
#     description = "Private Service Connection Name for Azure Synapse"
  
# }

# variable "synapse_dns_network_link_name" {
#     type = string
#     description = "Name of the DNS Resolver Virtual Network Link for Azure Synapse"

  
# }

# variable "synapse_dns_a_record_name" {
#     type = string
#     description = "Synapse DNS A Record Name"
  
# }


# variable "synapse_managed_private_endpoint_name" {
#     type = string
#     description = "Name of the ADF Managed Network Private Endpoint Connected to Azure Synapse"
  
# }


#KeyVault


variable "keyvalut_name" {
    type = string
    description = "Name of the Azure Key Vault"
  
}


variable "keyvault_private_endpoint_name" {
    type = string
    description = "Name of the KeyVault Private EndPoint"

  
}


variable "keyvault_private_service_connection_name" {
    type = string
    description = "Private Service Connection Name for KeyValut"
  
}


variable "keyvault_dns_network_link_name" {
    type = string
    description = "Name of the DNS Resolver Virtual Network Link for KeyVault"

  
}


variable "keyvault_dns_a_record_name" {
    type = string
    description = "Key Vault DNS A Record Name"
  
}