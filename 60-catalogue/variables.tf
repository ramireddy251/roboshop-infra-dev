variable "project" {
    type = string
    default = "roboshop"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
  
}

variable "instance_type" {
    type = string
    default = "t3a.micro"
  
}

variable "domain_name" {
    type = string
    default = "ramireddy.co.in"
}

variable "app_version" {
  default = "v3"
}