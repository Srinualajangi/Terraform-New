resource "aws_s3_bucket" "devpralock" {
    bucket = "devpralock"
    acl = "private"  
}

resource "aws_dynamodb_table" "devpralock" {
    name = "Lock-Table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
       name = "LockID"
       type = "S"
    }
  
}

resource "aws_dynamodb_table" "devpralock-prod" {
    name = "Lock-Table-Prod"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID-Prod"
    attribute {
       name = "LockID-Prod"
       type = "S"
    }
  
}