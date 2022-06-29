variable "gateway_ip" {
    type = string
}

variable "subnets" {
    type = list(string)
}

variable "resource_group_name" {
    type = string
}

variable "location" {
    type = string
}

variable "local_network_gateway_name" {
    type = string
}

variable "virtual_wan_name" {
    type = string
}

variable "virtual_hub_subnet" {
    type = string
}

variable "virtual_hub_name" {
    type = string
}

variable "vpn_gateway_name" {
    type = string
}

variable "vpn_gateway_connection_name" {
    type = string
}

variable "vpn_site_name" {
    type = string
}

variable "vpn_gateway_nat_rule_name" {
    type = string
}

variable "gateway_ip_cidr" {
    type = string
}