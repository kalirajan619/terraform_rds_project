provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "instance1" {
  ami           = "ami-0f1fb91a596abf28d"
  instance_type = "t2.micro"
  tags = {
    Name = "Instance1"
  }
}
