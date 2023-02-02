variable "vm_data_gateway_1_name" {
    type = string
    description = "Name of the First Virtual Machine in Data Gateway Subnet"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}

variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "nic_id_vm_data_gateway_1" {
    type = string
    description = "ID of NIC for First Virtual Machine in Data Gateway Subnet"
  
}


variable "vm_data_gateway_1_size" {
    type = string
    description = "Size of the First Virtual Machine in Data Gateway Subnet"
  
}


variable "storage_account_blob_endpoint" {
    type = string
    description = "Storage Account for Storing Boot Diagnostics"
  
}


variable "vm_data_gateway_2_name" {
    type = string
    description = "Name of the Second Virtual Machine in Data Gateway Subnet"
  
}

variable "nic_id_vm_data_gateway_2" {
    type = string
    description = "ID of NIC for Secnd Virtual Machine in Data Gateway Subnet"
  
}

variable "vm_data_gateway_2_size" {
    type = string
    description = "Size of the Second Virtual Machine in Data Gateway Subnet"
  
}