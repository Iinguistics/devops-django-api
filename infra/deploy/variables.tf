variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "dda"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "devops-django-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "jmsgoytia@gmail.com"
}

variable "db_username" {
  description = "Username for the dda api database"
  default     = "dda"
}

variable "db_password" {
  description = "Password for the Terraform database"
}
