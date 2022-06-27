## Default VPC
resource "aws_default_vpc" "vpc" {
    tags = {
        "Name" = var.vpc_tag
    } 
  
}


## Security Group
resource "aws_security_group" "mk_scgp" {
    name = var.mk_scgp_name
    description = var.mk_scgp_description
    vpc_id      = aws_default_vpc.vpc.id

    dynamic "ingress" {
        for_each = var.ingress
        # for_each = [22,80,443,3306,27017]
        # iterator = my_ingress 
        content {
            description      = ingress.value.description
            from_port        = ingress.value.port
            to_port          = ingress.value.port
            protocol         = ingress.value.protocol
            cidr_blocks      = ingress.value.cidr_blocks
        }

    }
    
    dynamic "egress" {
        for_each = var.egress
        content  {
            from_port = egress.value.port
            to_port = egress.value.port
            protocol = egress.value.protocol
            cidr_blocks = egress.value.cidr_blocks
        }
    } 

    tags = var.securitygroup_tags
}



## EC2 instance
resource "aws_instance" "instance" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    # security_groups  = ["name"]
    vpc_security_group_ids = ["${aws_security_group.mk_scgp.id}"]
    tags = {
        "name" = var.name
        "owner" = var.owner
        "profile" = var.profile
  }  
}