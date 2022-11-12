SHELL:=/bin/bash
version="v0.0.1"

# Nuke resource to clean up account # Don't use in prod ;-)
nuke:
	cloud-nuke inspect-aws --region us-east-1 --region us-west-1 --region global -exclude-resource-type iam -exclude-resource-type secretsmanager
	
