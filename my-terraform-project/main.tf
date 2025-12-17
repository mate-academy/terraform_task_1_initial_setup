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

resource "azurerm_resource_group" "example" {
  name     = "example2-resources"
  location = "East Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestorageacc1"
  resource_group_name      = azurerm_resource_group1.example1.name
  location                 = azurerm_resource_group1.example1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
