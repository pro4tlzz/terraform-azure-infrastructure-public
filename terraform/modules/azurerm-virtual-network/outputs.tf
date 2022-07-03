output "id" {
    value =   azurerm_virtual_network.vnet[*].id
}

output "subnet_1" {
    value = azurerm_virtual_network.vnet.subnet.*.id[0]
}

output "gateway_subnet" {
    value = azurerm_virtual_network.vnet.subnet.*.id[1]
}