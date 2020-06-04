data azurerm_resource_group "rg" {
  name = var.rgName
}

resource azurerm_virtual_network "vnet" {
  name                = var.vnetName
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  address_space       = var.vnetCIDR
  dns_servers         = var.dnsServers
}
