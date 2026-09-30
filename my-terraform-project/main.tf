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

resource "azurerm_resource_group" "vadym-tf" {
  name     = "vadym-tf-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "vadym-tf-storage" {
  name                     = "vadymtfstorageacc"
  resource_group_name      = azurerm_resource_group.vadym-tf.name
  location                 = azurerm_resource_group.vadym-tf.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}