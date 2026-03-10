locals {
    common_tags = {
        project = var.project
        environment = var.environment
        Terraform = "true"
    }
    backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
    private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
    route53_zone_id = data.aws_ssm_parameter.route53_zone_id.value

}