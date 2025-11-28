terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-bucket-anuja"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}