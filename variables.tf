variable "projectName" {
  description = "The name of project"
  type        = string
}
variable "location" {
  description = "The location of resource"
  type        = string
  default     = "francecentral"
}

variable "locationAbb" {
  description = "The Abbreviation of location"
  type        = string
  default     = "frc"
}
variable "apiImageName" {
  description = "The backend api image name"
  type        = string
}
variable "apiContainerName" {
  description = "The backend api image name"
  type        = string
}
variable "apiImageTag" {
  description = "The backend api image name"
  type        = string
}
