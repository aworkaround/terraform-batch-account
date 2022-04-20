variable "name" {
  type        = string
  description = "(String) Name of Azure Batch Account [Required]"
}

variable "location" {
  type        = string
  description = "(String) Location of Azure Batch Account [Required]"
}

variable "resource_group_name" {
  type        = string
  description = "(String) Resource Group Name for Batch Account [Required]"
}

variable "identity" {
  type = object({
    type = string
  })
  default = {
    type = "SystemAssigned"
  }
}

variable "tags" {
  default = {}
}

variable "storage_account_id" {
  type    = string
  default = null
}

variable "pool_allocation_mode" {
  type    = string
  default = "UserSubscription"
}

variable "public_network_access_enabled" {
  type    = bool
  default = false
}

variable "key_vault_reference" {
  type = object({
    id  = string
    url = string
  })
  default = {
    id  = null
    url = null
  }
}

variable "encryption" {
  type = object({
    key_vault_key_id = string
  })
  default = {
    key_vault_key_id = null
  }
}
