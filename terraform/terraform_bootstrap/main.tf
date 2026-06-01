locals {
  azurerm_backend_rg          = "rg-test-practice"
  azurerm_backend_rg_location = "southindia"
  azurerm_backend_sta         = "statestpractice"
}

module "terraform_bootstrap_module" {
  source             = "../modules/terraform_bootstrap_module"
  rg_name            = local.azurerm_backend_rg
  rg_location        = local.azurerm_backend_rg_location
  sta_name           = local.azurerm_backend_sta
  az_tenant_id       = var.az_tenant_id
  az_subscription_id = var.az_subscription_id
  az_client_id       = var.az_client_id
  az_client_secret   = var.az_client_secret
}