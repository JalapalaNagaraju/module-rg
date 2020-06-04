output "vnetId" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.vnet.id
}

output "vnetName" {
  description = "The Name of the newly created vNet"
  value       = azurerm_virtual_network.vnet.name
}

output "vnetLocation" {
  description = "The location of the newly created vNet"
  value       = azurerm_virtual_network.vnet.location
}

output "vnetAddressSpace" {
  description = "The address space of the newly created vNet"
  value       = azurerm_virtual_network.vnet.address_space
}

output "vnetSubnets" {
  description = "The ids of subnets created inside the new vNet"
  value       = azurerm_subnet.subnet[index(azurerm_subnet.subnet.*.name, "bootstrap-services")].id
}

