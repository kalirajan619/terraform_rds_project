provider aws {
region     = "us-west-2"
access_key = var.access_key
secret_key = var.secret_key
}

variable "access_key" {

}

variable "secret_key" {

}

variable "password" {

}

# resource "aws_db_instance" "myrdss" {
#   allocated_storage    = 5
#   storage_type         = "gp2"
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t2.micro"
#   db_name                 = "mydb"
#   username             = "foo"
#   #password             = file("../password.txt")
#   password = var.password
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot = "true"
# }

# resource "aws_eip" "myeip" {
#   vpc = "true"
# }
resource "aws_instance" "instance1" {
  ami           = "ami-0f1fb91a596abf28d"
  instance_type = "t2.micro"
 
}
