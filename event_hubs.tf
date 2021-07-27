resource "azurerm_eventhub_namespace" "example" {
  name                = var.event_hubs_namespace
  location            = azurerm_resource_group.policy-rg.location
  resource_group_name = azurerm_resource_group.policy-rg.name
  sku                 = "Standard"
  capacity            = 1
}

resource "azurerm_eventhub" "example" {
  name                = var.event_hubs_name
  namespace_name      = azurerm_eventhub_namespace.example.name
  resource_group_name = azurerm_resource_group.policy-rg.name
  partition_count     = 2
  message_retention   = 1
}