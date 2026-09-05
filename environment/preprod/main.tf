module "resource_group_name" {
  source = "../../modules/Resource_Group"
  rgs    = var.virtual_rgs
}


module "azurerm_storage_account" {
  depends_on = [module.resource_group_name]
  source     = "../../modules/Storage_Account"
  storage    = var.storage

}
module "azurerm_virtual_network" {
  depends_on = [module.resource_group_name]
  source     = "../../modules/Virtual_Network"
  VNS        = var.vnet
}