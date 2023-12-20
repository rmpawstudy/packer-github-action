variable "project_name" {
  description = "name of project"
  type        = string
  default     = "shopping"
}
variable "project_env" {
  description = "project_environment"
  type        = string
  default     = "prod"
}
variable "ami_id" {
  description = "Instance AMI"
  type        = string
  default     = "ami-0a0f1259dd1c90938"
}
locals {
  image-timestamp = regex_replace(timestamp(), "[- TZ:]", "")
  image-name      = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}

