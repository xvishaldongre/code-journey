terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  alias  = "region"
  default_tags {
    tags = {
      managed_by = "terraform"
      Owner      = "Vishal Dongre"
      Project    = "aurora-serverless-v1"
    }
  }
}
