data "aws_cloudfront_cache_policy" "cachingDisabled" {
    name = "Managed-CachingDisabled"
}

data "aws_cloudfront_cache_policy" "cachingOptimized" {
    name = "Managed-cachingOptimized"
}

data "aws_ssmparameter" "acm_certificate_arn" {
    namr = "/${var.project}/${var.environment}/frontend_alb_certificate_arn"
}