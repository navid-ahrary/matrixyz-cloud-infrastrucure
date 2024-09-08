module "rg" {
  source = "./modules/resource-group"

  location    = var.location
  locationAbb = var.locationAbb
  projectName = var.projectName
}

module "containerRegistry" {
  depends_on = [module.rg]
  source     = "./modules/container-registry"

  resourceGroup = module.rg.resourceGroupName
  location      = var.location
  locationAbb   = var.locationAbb
  projectName   = var.projectName
}

module "logWorkspace" {
  depends_on    = [module.rg]
  source        = "./modules/log-workspace"
  resourceGroup = module.rg.resourceGroupName
  location      = var.location
  locationAbb   = var.locationAbb
  projectName   = var.projectName
}



module "containerApp" {
  depends_on = [module.rg]
  source     = "./modules/container-app"


  resourceGroup     = module.rg.resourceGroupName
  location          = var.location
  locationAbb       = var.locationAbb
  projectName       = var.projectName
  logWorkdspaveId   = module.logWorkspace.id
  conRegLoginServer = module.containerRegistry.loginServer
  apiContainerName  = var.apiContainerName
  apiImageName      = var.apiImageName
  apiImageTag       = var.apiImageTag

}

