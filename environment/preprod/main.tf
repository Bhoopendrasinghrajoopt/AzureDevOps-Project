module "resource_group_name" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.virtual_rgs
}


module "azurerm_storage_account" {
  depends_on = [ module.resource_group_name ]
  source = "../../modules/azurerm_storage_account"
  storage = var.storage
  
}