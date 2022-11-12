# auorora-serverless-v1
variable "db_name" {
  type        = string
  description = "Name of the DB"
  default     = "sampledb" # DatabaseName must begin with a letter and contain only alphanumeric characters
}

variable "db_cluster_identifier" {
  type        = string
  description = "Cluster identifier of the DB"
  default     = "sample-db-cluster" # Only lowercase alphanumeric characters and hyphens allowed
}

variable "db_min_capacity" {
  type        = number
  description = "The minimum capacity for an Aurora DB cluster"
  default     = 1
}

variable "db_max_capacity" {
  type        = number
  description = "The maximum capacity for an Aurora DB cluster"
  default     = 1
}

variable "db_seconds_until_auto_pause" {
  type        = number
  description = "The time, in seconds, before an Aurora DB cluster in serverless mode is paused"
  default     = 300
}

variable "db_backup_retention_period" {
  type        = number
  description = "The days to retain backups for."
  default     = 1
}

variable "db_timeout_action" {
  type        = string
  description = "ForceApplyCapacityChange"
  default     = "The action to take when the timeout is reached. Valid values: ForceApplyCapacityChange, RollbackCapacityChange"
}

variable "db_auto_pause" {
  type        = bool
  description = true
  default     = "Whether to enable automatic pause."
}

variable "db_enable_http_endpoint" {
  type        = bool
  description = true
  default     = "Enable HTTP endpoint (data API)"
}

# Secrets Manager

variable "sm_name" {
  type        = string
  description = "Name of the new secret."
  default     = "auorora-serverless-v1-db-creds"
}

variable "sm_description" {
  type        = string
  description = "Description of the secret"
  default     = "Credentials for Aurora Serverless DB"
}
