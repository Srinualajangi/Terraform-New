# bucket = "devpra-prod"
# key =  "tfvars"
# region = "us-east-1"
# aws_dynamodb_table = "Lock-Table-Prod"

terraform {
  backend "s3" {
    bucket         = "devpra-prod"
    key            = "Prod-terraform.tfstate"
    region         = "us-east-1"

    dynamodb_table = "Lock-Table-Prod"
    encrypt        = true
  }
}