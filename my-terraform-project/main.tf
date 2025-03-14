terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "mate-example-rg" {
  name     = "mate-example-rg"
  location = "Poland Central"
}

resource "azurerm_storage_account" "example" {
  name                     = "matestoragerozd"
  resource_group_name      = azurerm_resource_group.mate-example-rg.name
  location                 = azurerm_resource_group.mate-example-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
