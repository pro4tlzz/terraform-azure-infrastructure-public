resource "azurerm_virtual_hub" "vhub" {
  name                = var.virtual_hub_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  virtual_wan_id      = var.virtual_wan_id
  address_prefix      = var.virtual_hub_subnet
  tags     = {
    Terraform: "True"
    Name : var.virtual_hub_name
  }
}