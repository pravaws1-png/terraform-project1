terraform {
  backend "s3" {
    bucket       = "pravanjan-terraform-state-678080238238-us-east-1"
    key          = "terraform-project1/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
