# Azure Provider source and version being used

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.67.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
features {}
# More information on the authentication methods supported by
# the AzureRM Provider can be found here:
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
tenant_id = var.tenant_id
client_id = var.client_id
client_secret = var.client_secret
subscription_id = var.subscription_id
}

# Create a resource group
resource "azurerm_resource_group" "resource_group" {
name = var.resource_group_name
location = var.resource_group_location
}

# Azure Data Lake V2
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
}