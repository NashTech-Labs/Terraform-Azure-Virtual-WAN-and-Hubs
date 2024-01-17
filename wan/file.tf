provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = var.virtual_network_name[0]
    address_space       = ["172.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_virtual_network" "example-2" {
  name                = var.virtual_network_name[1]
  address_space       = ["172.1.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_virtual_wan" "example" {
  name                = var.virtual_wan_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
}

resource "azurerm_virtual_hub" "example" {
  name                = var.virtual_hub_name[0]
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  virtual_wan_id      = azurerm_virtual_wan.example.id
  address_prefix      = "10.0.1.0/24"
}

resource "azurerm_virtual_hub_connection" "example" {
  name                      = var.virtual_hub_connection_name[0]
  virtual_hub_id            = azurerm_virtual_hub.example.id
  remote_virtual_network_id = azurerm_virtual_network.example.id
}

resource "azurerm_virtual_hub" "example-2" {
  name                = var.virtual_hub_name[1]
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  virtual_wan_id      = azurerm_virtual_wan.example.id
  address_prefix      = "10.0.2.0/24"
}

resource "azurerm_virtual_hub_connection" "example-2" {
  name                      = var.virtual_hub_connection_name[1]
  virtual_hub_id            = azurerm_virtual_hub.example-2.id
  remote_virtual_network_id = azurerm_virtual_network.example-2.id
}