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

variable "virtual_hub_subnet" {
    type=string
}

variable "virtual_hub_name" {
    type=string
}