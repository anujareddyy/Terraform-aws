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
