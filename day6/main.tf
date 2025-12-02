terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "example1" {
    ami = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 AMI (HVM), SSD Volume Type
    instance_type = var.instance_type
    tags = {
      Name = local.instance_name
    }
}
