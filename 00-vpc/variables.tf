variable "project" {
    type = string
    default = "roboshop"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "vpc_cidr" {
    type = string
    default = "10.128.0.0/16"
}
