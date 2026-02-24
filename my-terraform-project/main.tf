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

resource "azurerm_resource_group" "myexample" {
  name     = "my-example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "myexample" {
  name                     = "examplestorageacc"
  resource_group_name      = azurerm_resource_group.myexample.name
  location                 = azurerm_resource_group.myexample.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}