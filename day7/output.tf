output "anuja_instance_ip" {
    value = aws_instance.example1[0].public_ip
}
