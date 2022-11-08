variable "ecr_repo" {
  type        = string
  description = "Name of the ECR repo"
  default     = "ecr-aurora-serverless-v1"
}

variable "labmda_name" {
  type        = string
  description = "Name of the ECR repo"
  default     = "lamda-aurora-serverless-v1"
}
