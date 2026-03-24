data "aws_cloudfront_cache_policy" "cachingDisabled" {
    name = "Managed-CachingDisabled"
}

data "aws_cloudfront_cache_policy" "cachingOptimized" {
    name = "Managed-CachingOptimized"
}

data "aws_ssm_parameter" "acm_certificate_arn" {
    name = "/${var.project}/${var.environment}/frontend_alb_certificate_arn"
}

data "aws_ssm_parameter" "route53_zone_id" {
    name = "/${var.project}/${var.environment}/route53_zone_id"

}


