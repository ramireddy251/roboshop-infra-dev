module "vpc" {
    source = "../../terraform-aws-vpc"
    vpc_cidr = var.vpc_cidr
    project = var.project
    environment = var.environment
    is_peering_required = true
} 