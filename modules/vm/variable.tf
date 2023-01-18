variable "vm_gateway_one_name" {
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


variable "vm_gateway_one_nic_id" {
    type = string
    description = "ID of NIC for First Virtual Machine in Data Gateway Subnet"
  
}


variable "vm_gateway_one_vm_size" {
    type = string
    description = "Size of the First Virtual Machine in Data Gateway Subnet"
  
}


variable "storage_account_blob_endpoint" {
    type = string
    description = "Storage Account for Storing Boot Diagnostics"
  
}


variable "vm_gateway_two_name" {
    type = string
    description = "Name of the Second Virtual Machine in Data Gateway Subnet"
  
}

variable "vm_gateway_two_nic_id" {
    type = string
    description = "ID of NIC for Secnd Virtual Machine in Data Gateway Subnet"
  
}