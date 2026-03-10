resource "aws_ssm_parameter" "route53_zone_id" {
    name = "/${var.project}/${var.environment}/route53_zone_id"
    type = "String"
    value = aws_route53_zone.roboshop.zone_id
}