variable "tf_state_bucket" {
  description = "Name of S3 bucket for storing TF state"
  default     = "devops-django-api-tf-state"
}

variable "tf_state_lock_table" {
  description = "Name of DynamoDB table for TF state locking"
  default     = "devops-django-api-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "devops-django-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "jmsgoytia@gmail.com"
}
