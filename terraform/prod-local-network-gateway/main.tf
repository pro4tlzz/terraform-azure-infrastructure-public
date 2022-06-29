module "azure-local-network-gateway" {
    source                     ="../modules/azure-local-network-gateway"
    gateway_ip                 = var.gateway_ip
    subnets                    = var.subnets
    resource_group_name        = var.resource_group_name
    local_network_gateway_name = var.local_network_gateway_name
    location                   = var.location
}

module "ipsec-vpn" {
    source                     ="../modules/azure-ipsec-vpn"
    resource_group_name        = module.azure-local-network-gateway.resource_group_name
    resource_group_location    = module.azure-local-network-gateway.resource_group_location
    virtual_wan_name           = var.virtual_wan_name
    virtual_hub_subnet         = var.virtual_hub_subnet
    virtual_hub_name           = var.virtual_wan_name
    vpn_gateway_name           = var.vpn_gateway_name
}