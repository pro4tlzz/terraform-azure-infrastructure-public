resource "azurerm_local_network_gateway" "lng" {
  name                = var.local_network_gateway_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  gateway_address     = var.gateway_ip
  address_space       = var.subnets
  tags     = {
    Terraform: "True"
  }
}


resource "azurerm_virtual_wan" "vwan" {
  name                = var.virtual_wan_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  tags     = {
    Terraform: "True"
  }
}

resource "azurerm_virtual_hub" "vhub" {
  name                = var.virtual_hub_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  virtual_wan_id      = azurerm_virtual_wan.vwan.id
  address_prefix      = var.virtual_hub_subnet
  tags     = {
    Terraform: "True"
  }
}

resource "azurerm_vpn_gateway" "vgw" {
  name                = var.vpn_gateway_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  virtual_hub_id      = azurerm_virtual_hub.vhub.id
  tags     = {
    Terraform: "True"
  }
}

resource "azurerm_vpn_site" "vsite" {
  name                = var.vpn_site_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  virtual_wan_id      = azurerm_virtual_wan.vwan.id
  link {
    name       = "link1"
    ip_address = var.gateway_ip
  }
  tags     = {
    Terraform: "True"
  }
}

resource "azurerm_vpn_gateway_connection" "vgwc" {
  name               = var.vpn_gateway_connection_name
  vpn_gateway_id     = azurerm_vpn_gateway.vgw.id
  remote_vpn_site_id = azurerm_vpn_site.vsite.id

  vpn_link {
    name             = "link1"
    vpn_site_link_id = azurerm_vpn_site.vsite.link[0].id
  }

}

resource "azurerm_vpn_gateway_nat_rule" "vpngwnat" {
  name                = var.vpn_gateway_nat_rule_name
  resource_group_name = var.resource_group_name

  vpn_gateway_id      = azurerm_vpn_gateway.vgw.id

  external_mapping {
    address_space = var.gateway_ip_cidr
  }

  internal_mapping {
    address_space = var.virtual_hub_subnet
  }

}