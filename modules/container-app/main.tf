resource "azurerm_container_app_environment" "envDefault" {
  name                = local.contAppEnvName
  resource_group_name = var.resourceGroup
  location            = var.location

  tags = local.commonTags

  log_analytics_workspace_id = var.logWorkdspaveId
}

resource "azurerm_container_app" "appDefault" {
  name                         = local.contAppName
  resource_group_name          = var.resourceGroup
  container_app_environment_id = azurerm_container_app_environment.envDefault.id

  tags = local.commonTags

  revision_mode = "Single"

  template {
    container {
      name   = var.apiContainerName
      image  = "${var.conRegLoginServer}/${var.apiImageName}:${var.apiImageTag}"
      cpu    = "0.25"
      memory = "0.5Gi"
    }
  }
}
