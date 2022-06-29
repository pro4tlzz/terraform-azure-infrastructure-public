resource "azurerm_resource_group" "datacenter-group" {
  name     = var.resource_group_name
  location = var.location
  tags     = {
    Terraform: "True"
  }
}

resource "azurerm_local_network_gateway" "home" {
  name                = var.local_network_gateway_name
  resource_group_name = azurerm_resource_group.datacenter-group.name
  location            = azurerm_resource_group.datacenter-group.location
  gateway_address     = var.gateway_ip
  address_space       = var.subnets
  tags     = {
    Terraform: "True"
  }
}