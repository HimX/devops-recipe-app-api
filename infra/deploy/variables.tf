variable "prefix" {
  description = "Prefix for resource in AWS"
  default     = "raa"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact email for tagging resources"
  default     = "fe.gomez.corter@gmail.com"
}
