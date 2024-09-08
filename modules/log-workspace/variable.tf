variable "resourceGroup" {
  default = "The resource group name"
  type    = string
}
variable "location" {
  description = "Location of the container app"
  type        = string
}
variable "projectName" {
  description = "The name pf the project"
  type        = string
}
variable "locationAbb" {
  description = "Location Abbreviation for naming"
  type        = string
}
