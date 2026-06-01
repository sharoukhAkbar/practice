variable "rg_name" {
    description = "Name of the test environment resource group"
    type = string
}

variable "rg_location" {
    description = "Location for Test environment resource group"
    type = string
}

variable "sta_name" {
    description = "Name for test environment storage account"
    type = string
}

variable "az_tenant_id" {
    description = "Your Azure Tenant ID"
    type = string
}

variable "az_subscription_id" {
    description = "Your Azure Subscription ID"
    type = string
}

variable "az_client_id" {
    description = "Your Azure Client ID"
    type = string
}

variable "az_client_secret" {
    description = "Your Azure Client Secret"
    type = string
    sensitive = true
}