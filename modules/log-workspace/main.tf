resource "azurerm_log_analytics_workspace" "logworkspace" {
  name                = local.name
  location            = var.location
  resource_group_name = var.resourceGroup

  sku               = "Basic"
  retention_in_days = 30
}
