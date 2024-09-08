locals {
  contAppEnvName = "cae-${lower(var.projectName)}-${lower(terraform.workspace)}-${lower(var.locationAbb)}-01"
  contAppName    = "ca-${lower(var.projectName)}-${lower(terraform.workspace)}-${lower(var.locationAbb)}-01"
  commonTags = {
    projectName = var.projectName
    environment = terraform.workspace
    location    = var.location
  }
}
