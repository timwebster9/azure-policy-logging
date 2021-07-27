variable "location" {
  type = string
  description = "location"
}

variable "resource_group_name" {
  type = string
  description = "resource group name"
}

variable "storage_account_name" {
  type = string
  description = "storage account name"
}

variable "event_hubs_namespace" {
  type = string
  description = "event hubs namespace name"
}

variable "event_hubs_name" {
  type = string
  description = "event hubs name"
}

variable "policy_vnet_cidr" {
  type = string
  description = "vnet CIDR"
}

variable "policy_subnet_cidr" {
  type = string
  description = "subnet CIDR"
}