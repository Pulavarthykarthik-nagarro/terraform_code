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


variable "vm_data_gateway_1_nic_id" {
    type = string
    description = "ID of NIC for First Virtual Machine in Data Gateway Subnet"
  
}


variable "vm_data_gateway_1_size" {
    type = string
    description = "Size of the First Virtual Machine in Data Gateway Subnet"
  
}


# variable "storage_account_blob_endpoint" {
#     type = string
#     description = "Storage Account for Storing Boot Diagnostics"
  
# }

variable "vm_data_gateway_1_computer_name" {
    type = string
    description = "Computer Name of VM Data Gateway 1"
  
}



variable "vm_data_gateway_1_admin_username" {
    type = string
    description = "Username for VM Data Gateway 1"
  
}



variable "vm_data_gateway_1_admin_password" {
    type = string
    description = "Password for VM Data Gateway 1"
  
}

variable "vm_data_gateway_2_name" {
    type = string
    description = "Name of the Second Virtual Machine in Data Gateway Subnet"
  
}

variable "vm_data_gateway_2_nic_id" {
    type = string
    description = "ID of NIC for Secnd Virtual Machine in Data Gateway Subnet"
  
}

variable "vm_data_gateway_2_size" {
    type = string
    description = "Size of the Second Virtual Machine in Data Gateway Subnet"
  
}

variable "vm_data_gateway_2_admin_username" {
    type = string
    description = "Username for VM Data Gateway 2"
  
}



variable "vm_data_gateway_2_admin_password" {
    type = string
    description = "Password for VM Data Gateway 2"
  
}

variable "vm_data_gateway_2_computer_name" {
    type = string
    description = "Computer Name of VM Data Gateway 2"
  
}