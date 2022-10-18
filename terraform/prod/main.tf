module "azure-resource-group" {
  source                  = "../modules/azure-resource-group"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "azurerm-local-network-gateway" {
  source                        = "../modules/azurerm-local-network-gateway"
  resource_group_name           = module.azure-resource-group.name
  resource_group_location       = module.azure-resource-group.location
  local_network_gateway_name    = var.local_network_gateway_name
  gateway_ip                    = var.gateway_ip
  local_network_gateway_subnets = var.local_network_gateway_subnets
}

module "azurerm-public-ip" {
  source                      = "../modules/azurerm-public-ip"
  resource_group_name         = module.azure-resource-group.name
  resource_group_location     = module.azure-resource-group.location
  public_ip_name              = var.public_ip_name
  public_ip_allocation_method = var.public_ip_allocation_method
}

module "azurerm-virtual-network" {
  source                                      = "../modules/azurerm-virtual-network"
  resource_group_name                         = module.azure-resource-group.name
  resource_group_location                     = module.azure-resource-group.location
  virtual_network_name                        = var.virtual_network_name
  virtual_network_address_space               = var.virtual_network_address_space
  virtual_network_address_subnet_1            = var.virtual_network_address_subnet_1
  virtual_network_address_subnet_1_name       = var.virtual_network_address_subnet_1_name
  virtual_network_address_gateway_subnet      = var.virtual_network_address_gateway_subnet
  virtual_network_address_gateway_subnet_name = var.virtual_network_address_gateway_subnet_name
}

module "azurerm-virtual-network-gateway" {
  source                                         = "../modules/azurerm-virtual-network-gateway"
  resource_group_name                            = module.azure-resource-group.name
  resource_group_location                        = module.azure-resource-group.location
  virtual_network_gateway_name                   = var.virtual_network_gateway_name
  virtual_network_gateway_type                   = var.virtual_network_gateway_type
  virtual_network_gateway_type_vpn_type          = var.virtual_network_gateway_type_vpn_type
  virtual_network_gateway_active_or_passive      = var.virtual_network_gateway_active_or_passive
  virtual_network_gateway_bgp                    = var.virtual_network_gateway_bgp
  virtual_network_gateway_sku                    = var.virtual_network_gateway_sku
  virtual_network_gateway_ip_config_public_ip_id = module.azurerm-public-ip.id
  virtual_network_gateway_ip_config_subnet_id    = module.azurerm-virtual-network.gateway_subnet
  virtual_network_gateway_ip_config_name         = var.virtual_network_gateway_ip_config_name
}