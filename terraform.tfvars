# Common variables
resource_group_name = "daa_terraform_infra"
region = "East US"

#Shared Vnet Variables 
virtual_network_shared_name = "daavnet"
cidr_block_shared = "10.0.0.0/16"

# Private endpoints subnet variables
subnet_private_endpoint_name = "privateendpointsubnet"
cidr_private_endpoint_subnet = "10.0.1.0/24"
nsg_private_endpoint_subnet_name = "nsgprivateendpointsubnet"

# Data Gateway subnet variables
subnet_data_gateway_name = "datagatewaysubnet"
cidr_data_gateway_subnet = "10.0.2.0/24"
nsg_data_gateway_subnet_name= "nsgdatagatewaysubnet"

# ADF Variables
adf_name = "daa-demo-adf"
azure_ir_name = "daa-adf-azure-ir"
#nic_adf_private_endpoint_name = "adf-nic"
adf_dns_a_record_name = "adfdnsa"
adf_dns_network_link_name = "dnsnetworklinkadf"
adf_private_endpoint_name = "adfprivateendpoint"
adf_private_service_connection_name = "adfprivateserviceconnection"

# SQL Server
sqlserver_name = "daasqlserverdemo"
sqlserver_version = "12.0"
sqlserver_administrator_login = "daasql"
sqlserver_administrator_login_password = "azure@123"
sqldb_name = "daasqldbdemo"
sqldb_sku_name = "Basic"
sqldb_size_db = "2"
sqlserver_private_endpoint_name = "sqlserverprivateendpoint"
sqlserver_private_service_connection_name = "sqlserverprivateserviceconnection"
sqlserver_dns_network_link_name = "dnsnetworklinksqlserver"
sql_dns_a_record_name = "sqldnsa"
#nic_sqlserver_private_endpoint_name = "sqlserver-nic"
sqlserver_managed_private_endpoint_name = "sqlservermanagedpvtend"

# ADB Variables
adb_name = "daademoadb"
adb_sku = "premium"
adb_managed_resource_group_name = "adb-managed-resource"
adb_virtual_network_name = "adbvnet"
adb_cidr_block = "10.1.0.0/16"
adb_container_subnet_name = "adbcontainersubnet"
cidr_adb_container_subnet = "10.1.2.0/24"
#nsg_adb_container_subnet_name = "nsgadbcontainer"
adb_host_subnet_name = "adbhostsubnet"
cidr_adb_host_subnet = "10.1.3.0/24"
delegation_adb_container_subnet_name = "delegationadbcontainer"
delegation_adb_host_subnet_name = "delegationadbhost"
#nsg_adb_host_subnet_name = "nsgadbhost"
adb_private_endpoint_name = "adbprivateendpoint"
adb_private_service_connection_name = "adbpsc"
adb_dns_network_link_name = "adbdnsnwlink"
adb_dns_a_record_name = "adbdnsrecord"
adb_managed_private_endpoint_name = "adbmanagedpvtendpoint"
#nic_adb_private_endpoint_name = "adbnic"
adb_shared_vnet_peering_name = "adbsharedvnetpeering"
nsg_adb_name = "adbnsg"

# Vm01 Variables

vm_001_name = "vm01"
vm_001_size = "Standard_DS1_v2"
vm_001_admin_username = "vm01"
vm_001_admin_password = "azure@123"
nic_vm_001_name = "vm01nic"
vm_001_computer_name = "vm01computer"

#vm02 variables
vm_002_name = "vm02"
vm_002_size = "Standard_DS1_v2"
vm_002_admin_username = "vm02"
vm_002_admin_password = "azure@123"
nic_vm_002_name = "vm02nic"
vm_002_computer_name = "vm02computer"


# Storage Account

adls_001_name = "demoadlsstract"
adls_001_container_name = "democont"
adls_001_blob_name = "demoblob"
adls_managed_private_endpoint_name = "adlsmanagespvtend"
blob_private_endpoint_name = "demopvtpoint"
blob_private_service_connection_name = "blobpvtservice"
blob_dns_network_link_name = "blobdnslink"
blob_dns_a_record_name = "blobdnsrecord"
adls_001_public_ip = "106.212.241.51"
dfs_name = "dfsdemo"
dfs_private_endpoint_name = "dfspvtendpoint"
dfs_private_service_connection_name = "dfspvtconnection"
dfs_dns_a_record_name = "dfsaname"
dfs_dns_network_link_name = "dfsnwlink"

# Azure Synapse

synapse_adls_name = "synapseadlsdemodaa"
synapse_data_lake_name = "synapsedatalake"
synapse_name =  "synapsedemo"
sql_login = "daasynapsesql"
sql_password = "azure@123"
managed_resource_group_name = "synapsemanagedrg"

synapse_private_endpoint_name = "synapsepvtendpoint"
synapse_private_service_connection_name = "synapsepvtservice"
synapse_dns_network_link_name = "synapsednslink"
synapse_dns_a_record_name = "synapsednsa"
synapse_managed_private_endpoint_name = "synapsemanagedpvt"



#Keyvault

keyvalut_name = "demokeyvault"
keyvault_private_endpoint_name = "keyvaultpvtendpoint"
keyvault_private_service_connection_name = "keyvaultpvtsveconnec"
keyvault_dns_network_link_name = "kvdns"
keyvault_dns_a_record_name = "kvdnsa"