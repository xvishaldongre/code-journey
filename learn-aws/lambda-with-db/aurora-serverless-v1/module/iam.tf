# resource "aws_iam_user" "publisher" {
#   name = "ecr-publisher"
#   path = "/serviceaccounts/"
# }

# resource "aws_iam_access_key" "publisher" {
#   user = aws_iam_user.publisher.name
# }

# data "aws_iam_policy" "ECRFullAccess" {
#   name = "AmazonEC2ContainerRegistryFullAccess"
# }

# resource "aws_iam_user_policy_attachment" "ECRAccess" {
#   user       = aws_iam_user.publisher.name
#   policy_arn = data.aws_iam_policy.ECRFullAccess.arn
# }
