output "resourceGroup" {
  value = var.rgName
  depends_on = [
    azurerm_resource_group.rg
  ]
}
