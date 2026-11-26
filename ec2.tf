resource "aws_key_pair" "name" {
  key_name   = var.key_name
  public_key = file("${path.module}/terraform-key.pub")

}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "example" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.name.key_name
  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = "ExampleInstance"
  }
}

