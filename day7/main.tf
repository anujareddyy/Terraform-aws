resource "aws_instance" "example1" {
    ami = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 AMI (HVM), SSD Volume Type
    instance_type = var.instance_type
    count = var.instance_count
    monitoring = var.monitoring
    associate_public_ip_address = var.associate_public_ip
    tags = {
      Name = local.instance_name
    }
}
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = var.tags_01
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr_block[2]
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}


