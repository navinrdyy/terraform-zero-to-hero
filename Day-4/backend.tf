terraform {
  backend "s3" {
    bucket         = "naveen-s3-test-1335" # change this
    key            = "naveen/terraform.tfstate"
    region         = "us-east-1"
    #encrypt        = true
    dynamodb_table = "test"
  }
}