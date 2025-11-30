terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example1" {
  bucket = "anuja-terraform-state-bucket"

  tags = {
    Name        = "My bucket2"
    Environment = "Dev"
    }
}
terraform {
  backend "s3" {
    bucket = "anuja-terraform-state-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}


