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