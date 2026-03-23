locals {
    common_tags = {
        project = var.project
        environment = var.environment
        Terraform = "true"
    }
    route53_zone_id = data.aws_ssm_parameter.route53_zone_id.value

}