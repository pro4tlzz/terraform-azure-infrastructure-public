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