module "dev-app" {
  source = "./aws_infra"
  my-env = "dev"
  my-instance-type = "t3.micro"
  ami-id = "ami-0aacbf72109c53c0c"
  my-bucket-name = "dev-pravanjan-terraform-test-bucket"
  instance_count = 1
  dynamodb_table_count = 1
}
module "stg-app" {
  source = "./aws_infra"
  my-env = "stg"
  my-instance-type = "t3.small"
  ami-id = "ami-0c30b7300f5fb34cd"
  my-bucket-name = "stg-pravanjan-terraform-test-bucket"
  instance_count = 2
  dynamodb_table_count = 2
}
module "prd-app" {
  source = "./aws_infra"
  my-env = "prod"
  my-instance-type = "t8i.micro"
  ami-id = "ami-0c30b7300f5fb34cd"
  my-bucket-name = "prod-pravanjan-terraform-test-bucket"
    instance_count = 3
    dynamodb_table_count = 2
}