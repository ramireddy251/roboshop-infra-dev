locals {
    common_tags = {
        project = var.project
        environment = var.environment
        Terraform = "true"
    }
    cachingDisabled = data.aws_cloudfront_cache_policy.cachingDisabled.id
    cachingOptimized = data.aws_cloudfront_cache_policy.cachingOptimized.id
    acm_certificate_arn = data.aws_ssm_parameter.acm_certificate_arn.value
    route53_zone_id = data.aws_ssm_parameter.route53_zone_id.value
}