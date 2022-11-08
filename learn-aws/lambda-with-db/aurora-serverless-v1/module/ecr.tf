# # It will create a ECR repo
# resource "aws_ecr_repository" "repository" {
#   name                 = var.ecr_repo
#   image_tag_mutability = "MUTABLE"

#   image_scanning_configuration {
#     scan_on_push = true
#   }

#   force_delete = true

#   tags = {
#     "Name" = var.ecr_repo
#   }
# }
