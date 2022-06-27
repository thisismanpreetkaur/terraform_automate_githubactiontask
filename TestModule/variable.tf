## Default VPC Variables
variable "vpc_tag" {
    type = string
    description = "default-vpc tag block"
}

## Security Group Variables
variable "mk_scgp_name" {
    type = string 
    description = "securtiy-group name block"
}
variable "mk_scgp_description" {
    type = string 
    description = "security-group description block"
}

variable "ingress" {
  type = map(any)
  description = "security-group ingress block"
  
}
variable "egress" {
  type = map(any)
  description = "security-group egress block"
  
}
variable "securitygroup_tags" {
    type = map(any)
    description = "security-group tags block"
}


## EC2 Instance Variables
variable "ami" {
    type = string
    description = "EC2 ami block"
  
}
variable "instance_type" {
    type = string
    description = "EC2 instance type block"
  
}

variable "name" {
    type = string
    description = "EC2 instance tag name block"
  
}
variable "owner" {
    type = string
    description = "EC2 instance tag owner block"
  
}
variable "profile" {
  type = string
  description = "EC2 instance tag profile block"
  
}
variable "key_name" {
  type = string
  description = " EC2 instance key_name block"
}


