## Default VPC Values
vpc_tag = "default-vpc-manpreet"


## Security Group Values
mk_scgp_name = "allow_tls"
mk_scgp_description = "Allow TLS inbound traffic"

ingress = {
    "80" = {
        cidr_blocks = ["0.0.0.0/0"]
        port = 80
        protocol = "tcp"
        description = "HTTP port"
    }
    "443" = {
        cidr_blocks = ["0.0.0.0/0"]
        port = 443
        protocol = "tcp"
        description = "HTTPS port"
    }

}

egress = {
    "80" = {
        cidr_blocks = ["0.0.0.0/0"]
        port = 80
        protocol = "tcp"
    }
    "443" = {
        cidr_blocks = ["0.0.0.0/0"]
        port = 443
        protocol = "tcp"
    }
}

securitygroup_tags = {
    Name = "allow_tls"
}


## EC2 Instance Values
ami = "ami-07f03432f2e507c3c"
instance_type = "t2.micro"
name          =  "Mk first instance"
owner        =   "manpreet.kaur@cloudeq.com"
profile       =   "trainee"
       
    
key_name = "manpreetkey"