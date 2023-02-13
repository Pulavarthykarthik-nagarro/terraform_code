
# First VM in Data Gateway Subnet

resource "azurerm_windows_virtual_machine" "vm_data_gateway_1" {
    name = var.vm_data_gateway_1_name
    location = var.region
    resource_group_name = var.resource_group_name
    network_interface_ids = [var.vm_data_gateway_1_nic_id] # need to ask
    size = var.vm_data_gateway_1_size
    #delete_os_disk_on_termination = true  # to delete the OS disk automatically when deleting the VM
    #delete_data_disks_on_termination = true # to delete the data disks automatically when deleting the VM
    computer_name =  var.vm_data_gateway_1_computer_name
    admin_username = var.vm_data_gateway_1_admin_username
    admin_password = var.vm_data_gateway_1_admin_password
    

    

    source_image_reference{
        publisher   =   "MicrosoftWindowsServer" 
        offer       =   "WindowsServer" 
        sku         =   "2019-Datacenter" 
        version     =   "latest" 
        
    }


    os_disk{
        
        caching           = "ReadWrite"
        storage_account_type = "Standard_LRS"
        

    }

    # boot_diagnostics{
    #     enabled = true
    #     storage_url = var.storage_account_blob_endpoint 
    # }


  
}



# Second VM in Data Gateway Subnet

resource "azurerm_windows_virtual_machine" "vm_data_gateway_2" {
    name = var.vm_data_gateway_2_name
    location = var.region
    resource_group_name = var.resource_group_name
    network_interface_ids = [var.vm_data_gateway_2_nic_id]
    size  = var.vm_data_gateway_2_size
    #delete_os_disk_on_termination = true  # to delete the OS disk automatically when deleting the VM
    #delete_data_disks_on_termination = true # to delete the data disks automatically when deleting the VM
    computer_name =  var.vm_data_gateway_2_computer_name
    admin_username = var.vm_data_gateway_2_admin_username
    admin_password = var.vm_data_gateway_2_admin_password
    




    source_image_reference{
        publisher   =   "MicrosoftWindowsServer" 
        offer       =   "WindowsServer" 
        sku         =   "2019-Datacenter" 
        version     =   "latest" 
        
    }

    os_disk {
        
        caching           = "ReadWrite"
        storage_account_type = "Standard_LRS"
        

    }

    # boot_diagnostics{
    #     enabled = true
    #     storage_url = var.storage_account_blob_endpoint 
    # }


  
}