resource "azurerm_resource_group" "rg" {
  name     = local.rgName
  location = var.location

  tags = local.commonTags
}

resource "azurerm_management_lock" "lock" {
  count      = signum(var.enableDeleteLock ? 1 : 0)
  name       = "DoNotDelete"
  scope      = azurerm_resource_group.rg.id
  lock_level = "ReadOnly"
  notes      = "This resource group can't be deleted."
}
