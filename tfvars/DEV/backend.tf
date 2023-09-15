# # bucket = ""
# # key =  "tfvars"
# # region = "us-east-1"
# # dynamodb_table = ""


# bucket   = "devpralock"
# key = "tfvars"
# region = "us-east-1"
# dynamodb_table = "Lock-Table"

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "devpralock"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "Lock-Table"
    encrypt        = true
  }
}