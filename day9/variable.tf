variable "allowed_regions" {
  type = set(string)
  default = ["us-east-1", "us-west-2", "eu-west-1"]
}
variable "aws-instance-type" {
    type = list(string)
    default = ["t2.micro", "t3.micro", "t2.small"]
    description = "A list of AWS instance types"
  
}
variable "tags" {
    type = map(string)
    default = {
        Owner       = "Anuja"
        Project     = "Terraform-aws"
        Environment = "Dev"
    }
    description = "A map of tags to assign to resources"
}
variable "bucket_names" {
    type = list(string)
    default = ["anuja-terraform-bucket1", "anuja-terraform-bucket2"]
    description = "A list of S3 bucket names"
}
variable "bucket_names_set" {
    type = set(string)
    default = ["anuja-terraform-bucket10", "anuja-terraform-bucket20"]
    description = "A set of S3 bucket names"
}