data azurerm_resource_group "rg" {
  name = var.rgName
}

resource azurerm_virtual_network "vnet" {
  name                = var.vnetName
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  address_space       = var.vnetCIDR
  dns_servers         = var.dnsServers
  tags                = var.common_tags
}

resource "azurerm_subnet" "subnet" {
  count                = length(var.subnetNames)
  name                 = var.subnetNames[count.index]
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["${var.subnetPrefixes[count.index]}"]
}
