
resource "aws_dynamodb_table" "pagamentos" {
  name           = "pagamentos"
  billing_mode   = "PROVISIONED"
  read_capacity  = 50
  write_capacity = 50
  hash_key       = "IdTransacao"

  attribute {
    name = "IdTransacao"
    type = "S"
  }

}