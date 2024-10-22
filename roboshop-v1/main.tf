resource "aws_instance" "fronted" {

  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["i-0116178178774deb6"]
  tags = {
    name= "fronted"

  }
}