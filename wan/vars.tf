variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = list
}

variable "virtual_wan_name" {
  type        = string
}

variable "virtual_hub_name" {
  type        = list
}

variable "virtual_hub_connection_name" {
  type        = list
}

