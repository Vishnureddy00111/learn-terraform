resource "aws_route53_record" "record" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "${var.instance_name  }-dev.vishnuredddy2.online"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}
