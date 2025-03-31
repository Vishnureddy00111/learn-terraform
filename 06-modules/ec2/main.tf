resource "aws_instance" "instance" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0fabcecd5236d6dce"]
  tags = {
    name= var.instance_name
  }
}

variable "instance_name" {}

output "ip_address" {
  value = "aws.instance.instance.private_ip"
}


#output in child module wont print on screen.
#output in root module will print on screen.
