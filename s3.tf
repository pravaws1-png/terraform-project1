resource "aws_s3_bucket" "example" {
  bucket = "pravanjan-terraform-test-bucket"

  tags = {
    Name = "pravanjan-s3"
  }
}