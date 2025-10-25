module "rg" {
  source   = "../../Modules/azurerm_rg"
  child_rg = var.parent_rg

}

module "networking" {
  source          = "../../Modules/azurerm_networking"
  child_networks  = var.parent_networks
}