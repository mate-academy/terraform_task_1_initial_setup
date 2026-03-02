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

resource "azurerm_resource_group" "mate" {
  name     = "mate-resources"
  location = "France Central"
}

resource "azurerm_storage_account" "mate" {
  name                     = "matestorageacc"
  resource_group_name      = azurerm_resource_group.mate.name
  location                 = azurerm_resource_group.mate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}