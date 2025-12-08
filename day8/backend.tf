terraform {
  backend "s3" {
    bucket = "anuja-s3-terraform-backend"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
