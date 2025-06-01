# to create VPC 

resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  tags = {
    Name = var.vpc_tag
  }
}

# to create security group 

resource "aws_security_group" "allow_all" {
  name        = var.securitygroup_name
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = var.securitygroup_name
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_all_ingress_ipv4" {
  security_group_id = aws_security_group.allow_all.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_egress_ipv4" {
  security_group_id = aws_security_group.allow_all.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

# to create subnet 

resource "aws_subnet" "primary" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block
  tags = {
    Name = var.subnet_tag
  }
}

