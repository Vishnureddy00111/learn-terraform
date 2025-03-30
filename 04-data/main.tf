resource "aws_instance" "test" {
  ami      = "data.aws_ami.ami.id"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0fabcecd5236d6dce"]
  tags = {
    name= "test"

  }
}

data "aws_ami" "example"{

  most_recent = true
  name_regex  = "RHEL-9-DevOps-Practice"
  owners = ["973714476881"]
}

resource "aws_security_group" "sg" {
  name = "allow-all"
}