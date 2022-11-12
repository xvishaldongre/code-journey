resource "aws_rds_cluster" "default" {
  cluster_identifier      = var.db_cluster_identifier
  engine                  = "aurora-mysql"
  engine_mode             = "serverless"
  database_name           = var.db_name
  enable_http_endpoint    = var.enable_http_endpoint
  master_username         = local.db_creds.db_username # Length 1–16 and don't use "-"
  master_password         = local.db_creds.db_password # Don't use /, ", a space, and @)
  backup_retention_period = var.db_backup_retention_period

  skip_final_snapshot = true

  scaling_configuration {
    auto_pause               = var.db_auto_pause
    min_capacity             = var.db_min_capacity
    max_capacity             = var.db_max_capacity
    seconds_until_auto_pause = var.db_seconds_until_auto_pause
    timeout_action           = var.db_timeout_action
  }
}
