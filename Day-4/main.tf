# provider "aws" {
#   region = "us-east-1"
# }

# resource "aws_instance" "abhishek" {
#   instance_type = "t2.micro"
#   ami = "ami-053b0d53c279acc90" # change this
#   subnet_id = "subnet-019ea91ed9b5252e7" # change this
# }

# resource "aws_s3_bucket" "s3_bucket" {
#   bucket = "abhishek-s3-demo-xyz" # change this
# }

# resource "aws_dynamodb_table" "terraform_lock" {
#   name           = "terraform-lock"
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }


provider "aws" {
    region = "us-east-1"
}

variable "ami_type" {
    type = string
    description = "ami type"
    default = "ami-0360c520857e3138f"
}
variable "instance_type" {
  type = string
  description = "Instance Type"
  default = "t3.micro"
}

resource "aws_instance" "naveen" {
    instance_type = var.instance_type
    ami= var.ami_type
}

# resource "aws_dynamodb_table" "name" {
  
# }

# resource "aws_s3_bucket" "s3_test" {
#       bucket = "naveen-s3-demo-1335"
# }