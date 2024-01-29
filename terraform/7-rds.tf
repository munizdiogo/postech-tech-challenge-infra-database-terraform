resource "aws_instance" "webserver" {
  ami = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet_a.id
}


resource "aws_db_instance" "banco_de_dados_produto" {
  allocated_storage = 10
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  username = "admin"
  password = "Postech123"
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.db_produto_subnet.id

  publicly_accessible = true # Permitir acesso público
  vpc_security_group_ids = [aws_security_group.database_security_group.id]

  identifier = "dbpostech-produto"
}


resource "aws_db_instance" "banco_de_dados_pedido" {
  allocated_storage = 10
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  username = "admin"
  password = "Postech123"
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.db_pedido_subnet.id

  publicly_accessible = true # Permitir acesso público
  vpc_security_group_ids = [aws_security_group.database_security_group.id]

  identifier = "dbpostech-pedido"
}



resource "aws_db_subnet_group" "db_pedido_subnet" {
  name = "db-pedido-subnet"
  subnet_ids = [aws_subnet.private_subnet_a.id, aws_subnet.private_subnet_b.id]
}


resource "aws_db_subnet_group" "db_produto_subnet" {
  name = "db-produto-subnet"
  subnet_ids = [aws_subnet.private_subnet_a.id, aws_subnet.private_subnet_b.id]
}
