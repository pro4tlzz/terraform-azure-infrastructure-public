resource "azurerm_resource_group" "group" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags = {
    Terraform : "True"
    Name : var.resource_group_name
  }
}