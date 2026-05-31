resource "azurerm_resource_group" "rg_test_env" {
    name = var.rg_name
    location = var.rg_location
}

resource "azurerm_storage_account" "sta_test_env" {
    depends_on = [azurerm_resource_group.rg_test_env]
    name = var.sta_name
    resource_group_name = azurerm_resource_group.rg_test_env.name
    location = azurerm_resource_group.rg_test_env.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}