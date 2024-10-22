resource "aws_instance" "fronted" {

  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
}