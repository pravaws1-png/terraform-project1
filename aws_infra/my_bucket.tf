resource "aws_s3_bucket" "example" {
  bucket = "${var.my-env}-pravanjan-sample-bucket"
  

  tags = {
    Name = "${var.my-env}-pravanjan-s3"
    environment = var.my-env
  }
}