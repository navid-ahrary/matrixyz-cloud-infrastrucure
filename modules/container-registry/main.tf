resource "azurerm_container_registry" "contReg" {
  name                = local.registryName
  resource_group_name = var.resourceGroup
  location            = var.location

  sku = "Basic"

  tags = local.commonTags
}
