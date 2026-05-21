provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "petclinic_s3_state_bucket"
  lifecycle {
    prevent_destroy = false
  }
  
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name         = "petclinic_eks_state_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}