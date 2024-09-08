locals {
  rgName = "rg-${lower(var.projectName)}-${lower(terraform.workspace)}-${lower(var.locationAbb)}"
  commonTags = {
    projectName = var.projectName
    environment = terraform.workspace
    location    = var.location
  }
}
