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