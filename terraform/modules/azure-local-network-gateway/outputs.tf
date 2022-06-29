output "local_network_gateway_name" {
    value =   azurerm_resource_group.datacenter-group.name
}

output "location" {
    value =   azurerm_resource_group.datacenter-group.location
}