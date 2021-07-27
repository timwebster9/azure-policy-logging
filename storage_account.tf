resource "azurerm_storage_account" "logs-sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.policy-rg.name
  location                 = azurerm_resource_group.policy-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}