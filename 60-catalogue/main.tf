resource "aws_instance" "catalogue" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = local.private_subnet_id
    vpc_security_group_ids = [local.catalogue_sg_id]

    tags = merge(
        {
            Name = "${var.project}-${var.environment}-catalogue"
        },
        local.common_tags
    )
}

resource "terraform_data" "bootstrap_catalogue" {
    triggers_replace = [
        aws_instance.catalogue.id
    ]

    connection {
        type = "ssh"
        user = "ec2-user"
        password = "DevOps321"
        host = aws_instance.catalogue.private_ip
  }

    provisioner "file" {
        source = "bootstrap.sh"
        destination = "/tmp/bootstrap.sh"
    }

    provisioner "remote-exec" {
       inline = [
          "chmod +x /tmp/bootstrap.sh",
          "sudo sh /tmp/bootstrap.sh catalogue ${var.environment}"
       ]      
    }
}

action "aws_ec2_stop_instance" "catalogue" {
    config {
        instance_id = aws_instance.catalogue.id
    }
}
