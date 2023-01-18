variable "nsg_endpoint_name" {
    type = string
    description = "Name of the NSG on Private endpoint subnet"
  
}


variable "nsg_gateway_name" {
    type = string
    description = "Name of the NSG on Data Gateway Subnet"
  
}

variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}


variable "tags_common" {
}


