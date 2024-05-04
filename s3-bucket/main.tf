resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-test-9765"
  acl = "private"
  versioning {
    enabled = true
  }
}