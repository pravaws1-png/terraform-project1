variable "my-env" {
  type = string
}
variable "ami-id" {
  type = string
}
variable "my-instance-type" {
  type = string
}
variable "my-bucket-name" {
  type = string
}
variable "instance_count" {
  type    = number
  default= 1
}
variable "dynamodb_table_count" {
  type    = number
  default= 1
}
