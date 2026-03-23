locals {
    common_tags = {
        project = var.project
        environment = var.environment
        Terraform = "true"
    }
    frontend_alb_sg_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
    public_subnet_ids = split(",", data.aws_ssm_parameter.public_subnet_ids.value)
    route53_zone_id = data.aws_ssm_parameter.route53_zone_id.value
    frontend_alb_certificate_arn = data.aws_ssm_parameter.frontend_alb_certificate_arn.value

}