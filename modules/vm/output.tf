output "vm_gateway_first_vm" {
  description   = "Name of the First Virtual Machine"
  value       = azurerm_virtual_machine.vm_gateway_one.name
}

output "vm_gateway_second_vm" {
  description   = "Name of the Second Virtual Machine"
  value       = azurerm_virtual_machine.vm_gateway_two.name
}
