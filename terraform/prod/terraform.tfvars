gateway_ip                 = "1.1.1.1"
local_network_gateway_subnets = ["10.10.70.0/24"]
resource_group_name        = "resource-group-datacenter"
resource_group_location    = "West Europe"
local_network_gateway_name = "home-ipsec"
public_ip_name             = "vip-1"
virtual_network_name = "vnet1"
virtual_network_address_space    = ["10.20.0.0/16"]
virtual_network_address_subnet_1 = "10.20.5.0/24"
virtual_network_address_subnet_1_name = "Subnet1"
virtual_network_address_gateway_subnet = "10.20.0.0/16"
virtual_network_address_gateway_subnet_name = "GatewaySubnet"
virtual_network_gateway_name = "vngw1"
virtual_network_gateway_type = "Vpn"
virtual_network_gateway_type_vpn_type = "RouteBased"
virtual_network_gateway_active_or_passive = "false"
virtual_network_gateway_bgp = "false"
virtual_network_gateway_sku = "Basic"
virtual_network_gateway_ip_config_name ="vngw-ipcfg1"