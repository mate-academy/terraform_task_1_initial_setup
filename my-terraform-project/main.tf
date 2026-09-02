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

resource "azurerm_resource_group" "task1_rg" {
  name     = "terraform-task-1-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "task1_sa" {
  name                     = "alexdev"
  resource_group_name      = azurerm_resource_group.task1_rg.name
  location                 = azurerm_resource_group.task1_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}