variable "projectName" {
  description = "The name pf the project"
  type        = string
}
variable "location" {
  description = "Location of the resource group"
  type        = string
}
variable "locationAbb" {
  description = "Location Abbreviation for naming"
  type        = string
}

variable "enableDeleteLock" {
  description = "Flag to enable/disable resource group lock"
  type        = bool
  default     = false
}
