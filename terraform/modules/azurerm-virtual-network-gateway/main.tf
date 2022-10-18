resource "azurerm_virtual_network_gateway" "vngw" {
  name                = var.virtual_network_gateway_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  type     = var.virtual_network_gateway_type
  vpn_type = var.virtual_network_gateway_type_vpn_type

  active_active = var.virtual_network_gateway_active_or_passive
  enable_bgp    = var.virtual_network_gateway_bgp
  sku           = var.virtual_network_gateway_sku

  ip_configuration {
    name                 = var.virtual_network_gateway_ip_config_name
    public_ip_address_id = var.virtual_network_gateway_ip_config_public_ip_id
    subnet_id            = var.virtual_network_gateway_ip_config_subnet_id
  }

}