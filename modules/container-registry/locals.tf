locals {
  registryName = "cr${lower(var.projectName)}${lower(terraform.workspace)}${lower(var.locationAbb)}"
  commonTags = {
    projectName = var.projectName
    environment = terraform.workspace
    location    = var.location
  }
}
