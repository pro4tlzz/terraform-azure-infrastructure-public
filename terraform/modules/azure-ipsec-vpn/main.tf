resource "azurerm_resource_group" "datacenter-group" {
  name     = var.local_network_gateway_name
  location = var.location
}

#resource "azurerm_virtual_wan" "example" {
#  name                = var.virtual_wan_name
#  resource_group_name = azurerm_resource_group.datacenter-group.name
#  location            = azurerm_resource_group.datacenter-group.location
#}