resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  address_space       = var.virtual_network_address_space

  subnet {
    name           = var.virtual_network_address_subnet_1_name
    address_prefix = var.virtual_network_address_subnet_1
  }

  subnet {
    name           = var.virtual_network_address_gateway_subnet_name
    address_prefix = var.virtual_network_address_gateway_subnet
    # security_group = var.virtual_network_address_gateway_subnet
  }

  tags = {
    Terraform : "True"
    Name : var.virtual_network_name
  }
}