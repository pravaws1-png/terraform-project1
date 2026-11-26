resource "aws_dynamodb_table" "example" {
  name = "${var.my-env}-example-table-${count.index + 1}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  count        = var.dynamodb_table_count

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = "${var.my-env}-example-table"
  }
}