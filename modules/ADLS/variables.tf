
variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group"
  
}


variable "region" {
    type = string
    description = "Region for Deployment"
  
}



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



# variable "adls_001_public_ip" {
#     type = string
#     description = "Public IP of ADLS"
  
# }



# dfs

variable "dfs_name" {
    type = string
    description = "Name of the distributed file system"
  
}