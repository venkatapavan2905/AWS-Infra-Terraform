resource "aws_s3_bucket" "terraform-state" {
    bucket = "terraform-state-bucket-2906"
    tags = {
        Name = "terraform-state"
    }
}

resource "aws_s3_bucket_versioning" "versioning" {
    bucket = aws_s3_bucket.terraform-state.id
    versioning_configuration {
      status = "Enabled"
    }
  
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
    bucket = aws_s3_bucket.terraform-state.id
    rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
    }
  
}

resource "aws_dynamodb_table" "backend_dynamodb" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"

    attribute {
      name = "LockID"
      type = "S"
    }  
    hash_key = "LockID"
}