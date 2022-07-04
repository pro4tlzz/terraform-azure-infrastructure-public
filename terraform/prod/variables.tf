variable "resource_group_name" {
    type = string
}

variable "resource_group_location" {
    type = string
}

variable "local_network_gateway_name" {
    type = string
}

variable "gateway_ip" {
    type = string
}

variable "local_network_gateway_subnets" {
    type=list(string)
}

variable "ARM_CLIENT_ID" {
    type=string
}

variable "ARM_CLIENT_SECRET" {
    type=string
}

variable "ARM_SUBSCRIPTION_ID" {
    type=string
}

variable "ARM_TENANT_ID" {
    type=string
}

variable "public_ip_name"  {
    type=string
}

variable "public_ip_allocation_method" {
    type=string
}

variable "virtual_network_name" {
    type=string
}

variable "virtual_network_address_space" {
    type=list(string)
}

variable "virtual_network_address_subnet_1" {
    type=string
}

variable "virtual_network_address_subnet_1_name" {
    type=string
}

variable virtual_network_address_gateway_subnet {
    type=string
}

variable virtual_network_address_gateway_subnet_name {
    type=string
}

variable "virtual_network_gateway_name" {
    type = string
}

variable "virtual_network_gateway_type" {
    type = string
}

variable "virtual_network_gateway_type_vpn_type" {
    type = string
}

variable "virtual_network_gateway_active_or_passive" {
    type = string
}

variable "virtual_network_gateway_bgp" {
    type = string
}

variable "virtual_network_gateway_sku" {
    type = string
}

variable "virtual_network_gateway_ip_config_name" {
    type =string
}