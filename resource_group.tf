resource "azurerm_resource_group" "policy-rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "policy-vm-rg" {
  name     = "policy-vm-rg"
  location = var.location
}