variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "kcraa"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "kc-recipe-app-api"
}

variable "contact" {
  description = "Contact email for tagging resources"
  default     = "kaustav.chanda.work@gmail.com"
}
