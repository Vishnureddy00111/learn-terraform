resource "aws_instance" "fronted" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "fronted"

  }
}

resource "aws_route53_record" "fronted" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "fronted-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.fronted.private_ip]
}


resource "aws_instance" "mongodb" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "mongodb"

  }
}


resource "aws_route53_record" "mongodb" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "mongodb-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.mongodb.private_ip]
}



resource "aws_instance" "catalogue" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "catalogue"

  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "catalogue-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "redis" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "redis"

  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "redis-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.redis.private_ip]
}


resource "aws_instance" "user" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "user"

  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "user-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "cart" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "cart"

  }
}


resource "aws_route53_record" "cart" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "cart-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "mysql" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "mysql"

  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "mysql-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "shipping"

  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "shipping-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "robbitmq" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "robbitmq"

  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "robbitmq-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.robbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "payment"

  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "payment-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.payment.private_ip]
}
resource "aws_instance" "dispatch" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0925e3ad9a29b3b88"]
  tags = {
    name= "dispatch"

  }
}
resource "aws_route53_record" "dispatch" {
  zone_id = "Z03892523DTYJ3OLXCS7D"
  name    = "dispatch-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.dispatch.private_ip]
}