variable "resourceGroup" {
  default = "The resource group name"
  type    = string
}
variable "location" {
  description = "Location of the container app"
  type        = string
}
variable "locationAbb" {
  description = "Location Abbreviation for naming"
  type        = string
}
variable "projectName" {
  description = "The name pf the project"
  type        = string
}
variable "conRegLoginServer" {
  description = "The Conatiner Registry Login Server"
  type        = string
}
variable "apiContainerName" {
  description = "The API Backend Container Name"
  type        = string
}
variable "apiImageName" {
  description = "The API Backend Image Name"
  type        = string
}
variable "apiImageTag" {
  description = "The API Backend Container Image Tag"
  type        = string
  default     = "latest"
}
variable "logWorkdspaveId" {
  description = "The Log Analytics Workspace Id"
  type        = string
}
