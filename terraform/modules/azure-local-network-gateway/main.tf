resource "azurerm_resource_group" "datacenter-group" {
  name     = var.resource_group_name
  location = var.location
  tags     = {
    Terraform: "True"
  }
}