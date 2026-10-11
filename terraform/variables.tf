variable "aws_region" {
  description = "AWS region where the infrastructure is deployed"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name used to identify project resources"
  type        = string
  default     = "next-js-pipeline"
}

variable "domain_name" {
  description = "Domain name used for the application HTTPS certificate"
  type        = string
  default     = "devops.nomnomlk.com"
}