module "azure-resource-group" {
    source                     ="../modules/azure-resource-group"
    resource_group_name        = var.resource_group_name
    resource_group_location    = var.resource_group_location
}

module "azurerm-local-network-gateway" {
    source                     ="../modules/azurerm-local-network-gateway"
    resource_group_name        = module.azure-resource-group.name
    resource_group_location    = module.azure-resource-group.location
    local_network_gateway_name = var.local_network_gateway_name
    gateway_ip                 = var.gateway_ip
    local_network_gateway_subnets = var.local_network_gateway_subnets
}

module "azurerm-virtual-wan" {
    source                     ="../modules/azurerm-virtual-wan"
    resource_group_name        = module.azure-resource-group.name
    resource_group_location    = module.azure-resource-group.location
    virtual_wan_name           = var.virtual_wan_name
}