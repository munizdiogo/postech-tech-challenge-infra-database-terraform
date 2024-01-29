
resource "aws_dynamodb_table" "pagamentos" {
  name           = "pagamentos"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "IdTransacao"

  attribute {
    name = "IdTransacao"
    type = "S"
  }

}