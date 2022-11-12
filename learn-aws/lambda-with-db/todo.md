# 06-Nov-2022
# [Learn] - AWS - Lambda that connect to DB
## Aurora Serverless V1
- Aurora Serverless DB
  - x Secrets Manager - To store the DB creds
  - x Secrets Manager - To pull the DB creds
  - x RDS - Create DB
- Lambda
  - ECR to store lambda image
- IAM role
  - For lambda to connect with DB using Data API

## Aurora Serverless V2
- Aurora Serverless DB
  - Secrets Manager - To store the DB creds
- Lambda
  - ECR to store lambda image
- IAM role
  - For lambda to connect with DB with RDS Proxy