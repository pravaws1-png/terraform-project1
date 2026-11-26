variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0a951420c495183dc"
}
variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  type        = string
  default     = "t3.micro"
}
variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
  default     = "terraform-key"
  
}
variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "example-table"
}


variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "allow_ssh"
}
variable "ec2_instance_name" {
  description = "The name of the EC2 instance"
  type        = string
  default     = "ExampleInstance"
}