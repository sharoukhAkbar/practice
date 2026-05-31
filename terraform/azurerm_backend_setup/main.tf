locals {
  azurerm_backend_rg          = "rg-test-practice"
  azurerm_backend_rg_location = "mena-south"
  azurerm_backend_sta         = "statestpractice"
}

module "azure_backend_infra" {
  source      = "../modules/azure_backend_infra"
  rg_name     = local.azurerm_backend_rg
  rg_location = local.azurerm_backend_rg_location
  sta_name    = local.azurerm_backend_sta
}