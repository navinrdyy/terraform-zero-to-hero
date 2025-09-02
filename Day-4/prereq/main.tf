provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_s3" {
  bucket = "terraform_s3"
  tags = {
    Name        = "My s3 Dev bucket"
    Environment = "Dev"
  }
  
}

resource "aws_dynamodb_table" "terraform_lock" {
  name             = "terraform_lock"
  hash_key         = "LockID"
  billing_mode     = "PAY_PER_REQUEST"
  
  attribute {
    name = "LockID"
    type = "S"
  }
}