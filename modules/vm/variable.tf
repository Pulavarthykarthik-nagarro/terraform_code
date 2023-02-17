variable "vm_001_name" {
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


variable "vm_001_nic_id" {
    type = string
    description = "ID of NIC for First Virtual Machine in Data Gateway Subnet"
  
}


variable "vm_001_size" {
    type = string
    description = "Size of the First Virtual Machine in Data Gateway Subnet"
  
}


# variable "storage_account_blob_endpoint" {
#     type = string
#     description = "Storage Account for Storing Boot Diagnostics"
  
# }

variable "vm_001_computer_name" {
    type = string
    description = "Computer Name of VM Data Gateway 1"
  
}



variable "vm_001_admin_username" {
    type = string
    description = "Username for VM Data Gateway 1"
  
}



variable "vm_001_admin_password" {
    type = string
    description = "Password for VM Data Gateway 1"
  
}

variable "vm_002_name" {
    type = string
    description = "Name of the Second Virtual Machine in Data Gateway Subnet"
  
}

variable "vm_002_nic_id" {
    type = string
    description = "ID of NIC for Secnd Virtual Machine in Data Gateway Subnet"
  
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

variable "vm_002_computer_name" {
    type = string
    description = "Computer Name of VM Data Gateway 2"
  
}