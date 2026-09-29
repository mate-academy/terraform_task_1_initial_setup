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

resource "azurerm_resource_group" "Karakorum" {
  name     = "krkrm-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "krkrm_storage_acc" {
  name                     = "krkrmstorageacc"
  resource_group_name      = azurerm_resource_group.Karakorum.name
  location                 = azurerm_resource_group.Karakorum.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}