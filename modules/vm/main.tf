
# First VM in Data Gateway Subnet

resource "azurerm_virtual_machine" "vm_data_gateway_1" {
    name = var.vm_data_gateway_1_name
    location = var.region
    resource_group_name = var.resource_group_name
    network_interface_ids = [var.nic_id_vm_data_gateway_1] 
    vm_size = var.vm_data_gateway_1_size
    delete_os_disk_on_termination = true  # to delete the OS disk automatically when deleting the VM
    delete_data_disks_on_termination = true # to delete the data disks automatically when deleting the VM
    admin_username =   # need to be checked
    admin_password = # need to be checked
    

    storage_image_reference{
        publisher   =   "MicrosoftWindowsServer" 
        offer       =   "WindowsServer" 
        sku         =   "2019-Datacenter" 
        version     =   "latest" 
        
    }

    storage_os_disk{
        name              = ""
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"

    }

    boot_diagnostics{
        enabled = true
        storage_url = var.storage_account_blob_endpoint 
    }


  
}



# Second VM in Data Gateway Subnet

resource "azurerm_virtual_machine" "vm_data_gateway_2" {
    name = var.vm_data_gateway_2_name
    location = var.region
    resource_group_name = var.resource_group_name
    network_interface_ids = [var.nic_id_vm_data_gateway_2]
    vm_size = var.vm_data_gateway_2_size
    delete_os_disk_on_termination = true  # to delete the OS disk automatically when deleting the VM
    delete_data_disks_on_termination = true # to delete the data disks automatically when deleting the VM
    admin_username =   # need to be checked
    admin_password = # need to be checked




    storage_image_reference{
        publisher   =   "MicrosoftWindowsServer" 
        offer       =   "WindowsServer" 
        sku         =   "2019-Datacenter" 
        version     =   "latest" 
        
    }

    storage_os_disk{
        name              = ""
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"

    }

    boot_diagnostics{
        enabled = true
        storage_url = var.storage_account_blob_endpoint 
    }


  
}