provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "my-unique-rg-name-12345"  # Змініть на унікальну назву
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "myuniquestorage12345"  # Змініть на унікальну назву
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "test"
    student     = "Yevgene-DP"  # Додайте ваш username
  }
}
