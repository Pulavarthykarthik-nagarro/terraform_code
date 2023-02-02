resource_group_name = "daa_terraform_infra"
region = "East US"

virtual_network_shared_name = "daavnet"
cidr_block_shared = "10.0.0.0/16"
subnet_private_endpoint_name = "privateendpointsubnet"
cidr_private_endpoint_subnet = "10.0.1.0/24"
nsg_private_endpoint_subnet_name = "nsgprivateendpointsubnet"
subnet_data_gateway_name = "datagatewaysubnet"
cidr_data_gateway_subnet = "10.0.2.0/24"
nsg_data_gateway_subnet_name= "nsgdatagatewaysubnet"