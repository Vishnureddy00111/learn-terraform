variable "instance" {
  default = {
    fronted = {}
    mongodb = {}
    catalogue = {}
    user = {}
    robbitmq = {}
    mysql = {}
    shipping = {}
    payment = {}
    dispatch = {}
    reids = {}
    cart = {}
  }
}


resource "aws_instance" "instance" {
  for_each = var.instance
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= each.key
  }
}

resource "aws_route53_record" "record" {
for_each = var.instance
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "${each.key}-dev.vishnuredddy2.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[each.key]["private_ip"]]

    }
