resource "azurerm_batch_account" "batch_account" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  identity {
    type         = var.identity.type # "SystemAssigned", "UserAssigned" or "SystemAssigned, UserAssigned"
  }
  tags                          = var.tags
  storage_account_id            = var.storage_account_id
  pool_allocation_mode          = var.pool_allocation_mode          # UserSubscription or BatchService
  public_network_access_enabled = var.public_network_access_enabled # true or false
  key_vault_reference {
    id  = var.key_vault_reference.id
    url = var.key_vault_reference.url
  }
  encryption {
    key_vault_key_id = var.encryption.key_vault_key_id
  }
}
