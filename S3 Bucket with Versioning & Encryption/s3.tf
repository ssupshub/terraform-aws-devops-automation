resource "aws_s3_bucket" "dev_bucket" {
  bucket = "devops-terraform-bucket-12345"

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
