resource "aws_instance" "example" {
  ami             = var.ami-id
  instance_type   = var.my-instance-type
  count          = var.instance_count


  tags = {
    Name = "${var.my-env}-ExampleInstance"
  }
}