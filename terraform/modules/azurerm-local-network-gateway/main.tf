resource "azurerm_local_network_gateway" "lng" {
  name                = var.local_network_gateway_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  gateway_address     = var.gateway_ip
  address_space              = var.local_network_gateway_subnets
}