terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "mcisb" {
  name     = "mcisb-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "mcisb" {
  name                     = "examplestorageacc"
  resource_group_name      = azurerm_resource_group_mcisb.mcisb.name
  location                 = azurerm_resource_group_mcisb.mcisb.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}