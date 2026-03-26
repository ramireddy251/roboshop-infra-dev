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
    default = "ami-058fbc284998614e2"
  
}

variable "instance_type" {
    type = string
    default = "t3a.micro"
  
}