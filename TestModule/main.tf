## Module
module "mk_default_vpc" {
    source = "../RootModule"

    ## Default VPC
    vpc_tag = var.vpc_tag



    ## Security Group
    mk_scgp_name = var.mk_scgp_name
    mk_scgp_description = var.mk_scgp_description
    ingress = var.ingress
    egress = var.egress
    securitygroup_tags = var.securitygroup_tags



    ## EC2 Instance
    ami = var.ami
    instance_type = var.instance_type
    key_name=var.key_name
    name = var.name
    owner = var.owner
    profile = var.profile
}
