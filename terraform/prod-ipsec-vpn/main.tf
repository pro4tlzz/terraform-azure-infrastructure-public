module "azure-resource-group" {
    source                     ="../modules/azure-resource-group"
    gateway_ip                 = var.gateway_ip
    subnets                    = var.subnets
    resource_group_name        = var.resource_group_name
    location                   = var.location
}

module "ipsec-vpn" {
    source                     ="../modules/azure-ipsec-vpn"
    resource_group_name        = module.azure-resource-group.resource_group_name
    resource_group_location    = module.azure-resource-group.resource_group_location
    virtual_wan_name           = var.virtual_wan_name
    virtual_hub_subnet         = var.virtual_hub_subnet
    virtual_hub_name           = var.virtual_wan_name
    vpn_gateway_name           = var.vpn_gateway_name
    vpn_gateway_connection_name= var.vpn_gateway_connection_name
    vpn_site_name              = var.vpn_site_name
    gateway_ip_cidr            = var.gateway_ip_cidr
    vpn_gateway_nat_rule_name  = var.vpn_gateway_nat_rule_name
    gateway_ip                 = var.gateway_ip
    local_network_gateway_name = var.local_network_gateway_name
    subnets                    = var.subnets
}