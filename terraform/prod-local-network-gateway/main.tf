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
    local_network_gateway_name = module.azure-local-network-gateway.local_network_gateway_name
    location                   = module.azure-local-network-gateway.location
}