resource "aws_instance" "instance" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= var.instance_name
  }
}

variable "instance_name" {}