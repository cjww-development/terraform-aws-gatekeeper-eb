data "aws_vpc" "default_vpc" {
  id = var.default_vpc_id
}

data "aws_subnets" "default_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default_vpc.id]
  }
}

resource "aws_security_group" "ip_block" {
  #checkov:skip=CKV2_AWS_5:N/A
  name        = "ip-block"
  description = "Restrict access based on source IP"

  vpc_id = data.aws_vpc.default_vpc.id

  ingress {
    description = "https"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.inbound_ip_addresses
  }

  egress {
    description = "General outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.outbound_ip_addresses
  }
}
