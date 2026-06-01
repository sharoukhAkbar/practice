resource "azurerm_resource_group" "rg_test_env" {
    name = var.rg_name
    location = var.rg_location
    tags = {
        provision = "terraform"
        purpose = "general"
        project = "practice"
    }
}

resource "azurerm_storage_account" "sta_test_env" {
    name = var.sta_name
    resource_group_name = azurerm_resource_group.rg_test_env.name
    location = azurerm_resource_group.rg_test_env.location
    account_tier = "Standard"
    account_replication_type = "LRS"
    tags = {
        provision = "terraform"
        purpose = "general"
        project = "practice"
    }
}

resource "azurerm_storage_container" "sta_container_test_env" {
    name = "practice-terraform-state"
    storage_account_name = azurerm_storage_account.sta_test_env.name
    container_access_type = "private"
}