# Creating a AWS secret for database 
resource "aws_secretsmanager_secret" "auorora-serverless-db-secret" {
  name        = "auorora-serverless-v1-db-creds"
  description = "Credentials for Aurora Serverless DB"

  tags = {
    managed_by = "terraform"
    Owner      = "Vishal Dongre"
    Project    = "aurora-serverless-v1"
  }
}

# Pull secrets
data "aws_secretsmanager_secret_version" "creds" {
  secret_id = aws_secretsmanager_secret.auorora-serverless-db-secret.name
}

locals {
  db_creds = jsondecode(
    data.aws_secretsmanager_secret_version.creds.secret_string
  )
}

output "username" {
  value = local.db_creds.db_username
  sensitive = true
}