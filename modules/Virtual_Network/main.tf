resource "azurerm_virtual_network" "VNS" {
  for_each = var.VNS
  name = each.value.vnet_name
  resource_group_name = each.value.rg_name
  address_space = each.value.address_space
  location = each.value.location
}