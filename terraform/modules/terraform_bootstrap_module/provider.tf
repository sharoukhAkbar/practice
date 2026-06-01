provider "azurerm" {
    features {}
    skip_provider_registration = true

    tenant_id       = "${var.az_tenant_id}"
    subscription_id = "${var.az_subscription_id}"
    client_id       = "${var.az_client_id}"
    client_secret   = "${var.az_client_secret}"
}

terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
}