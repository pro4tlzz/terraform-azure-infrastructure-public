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

variable "virtual_wan_name" {
    type=string
}