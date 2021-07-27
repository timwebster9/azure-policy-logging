resource "azurerm_virtual_network" "policy-vnet" {
  name                = "policy-vnet"
  location            = azurerm_resource_group.policy-vm-rg.location
  resource_group_name = azurerm_resource_group.policy-vm-rg.name
  address_space       = [var.policy_vnet_cidr]
}

resource "azurerm_subnet" "default" {
  name                 = "default"
  resource_group_name  = azurerm_resource_group.policy-vm-rg.name
  virtual_network_name = azurerm_virtual_network.policy-vnet.name
  address_prefixes     = [var.policy_subnet_cidr]
}