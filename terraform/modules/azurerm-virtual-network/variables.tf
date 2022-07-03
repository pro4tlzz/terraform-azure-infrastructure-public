variable "resource_group_name" {
    type = string
}

variable "resource_group_location" {
    type = string
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