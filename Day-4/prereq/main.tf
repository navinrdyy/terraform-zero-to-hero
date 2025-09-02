provider "aws" {
  region = "us-east-1"
}

variable "s3_bkt_name" {
  type        = string
  description = "AWS S3 Bucket Name"
  default     = "test"
}

variable "dynamo_tbl_name" {
  type        = string
  description = "AWS Dynamo Table Name"
  default     = ""
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bkt_name

  tags = {
    Name        = "My s3 Dev bucket"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "dynamo_table" {
  name         = var.dynamo_tbl_name
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}