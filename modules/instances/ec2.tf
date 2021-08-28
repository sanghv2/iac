resource "aws_instance" "aws" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.ec2_name
  }
}

