resource "azurerm_virtual_wan" "vwan" {
  name                = var.virtual_wan_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
}

resource "azurerm_virtual_hub" "vhub" {
  name                = var.virtual_hub_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  virtual_wan_id      = azurerm_virtual_wan.vwan.id
  address_prefix      = var.virtual_hub_subnet
}