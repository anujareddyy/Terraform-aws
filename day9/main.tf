resource "aws_instance" "anuja_ec2" {
    ami = "ami-0b59bfac6be064b78"
    instance_type = var.aws-instance-type[1]
    for_each = var.allowed_regions
    tags = var.tags
  
}

