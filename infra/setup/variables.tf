variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF state"
  default     = "kc-recipe-api-tf-state"
}

variable "tf_state_lock_table" {
  description = "Name of DynamoDB table for TF state locking"
  default     = "kc-recipe-api-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "kc-recipe-app-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "kaustav.chanda@hyland.com"
}
