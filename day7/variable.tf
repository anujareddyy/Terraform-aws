variable "region" {
    type = string
    default = "us-east-1"
    description = "region"
}
variable "instance_type" {
    type    = string
    default = "t3.micro"
}
variable "environment" {
    default = "dev"
    type    = string
    description = "Environment for the instance"
}
variable "instance_count" {
    type    = number
    default = 1
    description = "Number of instances to launch"
}
variable "monitoring" {
    type    = bool
    default = true
    description = "Enable detailed monitoring"
}
variable "associate_public_ip" {
    type    = bool
    default = true
    description = "Associate a public IP address with the instance"
}