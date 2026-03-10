resource "aws_route53_zone" "roboshop" {
  name = var.domain_name
}

resource "aws_route53_record" "mongodb" {
  zone_id = aws_route53_zone.roboshop.id
  name    = "mongodb-${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.mongodb.private_ip]
  allow_overwrite = true
}

resource "aws_route53_record" "redis" {
  zone_id = aws_route53_zone.roboshop.id
  name    = "redis-${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.redis.private_ip]
  allow_overwrite = true
}

resource "aws_route53_record" "mysql" {
  zone_id = aws_route53_zone.roboshop.id
  name    = "mysql-${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.mysql.private_ip]
  allow_overwrite = true
}