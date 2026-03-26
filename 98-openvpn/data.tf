data "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project}/${var.environment}/public_subnet_ids"

}

data "aws_ssm_parameter" "openvpn_sg_id" {
    name = "/${var.project}/${var.environment}/openvpn_sg_id"

}