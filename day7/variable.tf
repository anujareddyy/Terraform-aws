variable "region" {
    type = list(string)
    default = ["us-east-1","us-west-2","eu-west-1"]
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
variable "cidr_block" {
  type        = list(string)
  default     = ["10.0.0.0/16", "192.168.0.0/16", "172.16.0.0/12"]
  description = "CIDR blocks for security group rules"
}
variable "tags_01" {
    type = map(string)
    default = {
        Owner       = "Anuja"
        Project     = "Terraform-aws"
        Environment = "Dev"
    }
    description = "A map of tags to assign to resources"
  
}
