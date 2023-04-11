provider "aws" {
  region = "us-east-2"
}
resource "aws_s3_bucket" "tf_remote_state" {
  bucket = "terraform-s3-backend-mahesh"
  lifecycle {
    prevent_destroy = true
  }
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
#locking part

resource "aws_dynamodb_table" "tf_remote_state_locking" {
  hash_key = "LockID"
  name = "deep-s3-backend-locking"
  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}