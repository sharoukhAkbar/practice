variable "az_tenant_id" {
  description = "Your Azure Tenant ID"
  type        = string
}

variable "az_subscription_id" {
  description = "Your Azure Subscription ID"
  type        = string
}

variable "az_client_id" {
  description = "Your Azure Client ID"
  type        = string
}

variable "az_client_secret" {
  description = "Your Azure Client Secret"
  type        = string
  sensitive   = true
}