resource "aws_instance" "test" {
  ami      = "data.aws_ami.ami.id"
  instance_type = "t3.small"
  vpc_security_group_ids= ["data.aws-security.sg.id"]
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

# we can apply only terraform plan