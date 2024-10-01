provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "instance1" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
  tags = {
    Name = "Instance1"
  }
}
variable "replica"{
  type = string
  default = ""
}
resource "aws_instance" "instance2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
  count = var.replica
  tags = {
    Name = "Instance2"
  }
}
