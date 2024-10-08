resource "aws_db_instance" "myrdss" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  db_name                 = "mydb"
  username             = "foo"
  password = "faugfufagu"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = "true"
}