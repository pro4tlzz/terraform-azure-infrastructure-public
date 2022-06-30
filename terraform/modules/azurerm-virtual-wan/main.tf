resource "azurerm_virtual_wan" "vwan" {
  name                = var.virtual_wan_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  tags     = {
    Terraform: "True"
    Name : var.virtual_wan_name
  }
}