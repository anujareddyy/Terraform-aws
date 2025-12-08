resource "aws_s3_bucket" "example_anuja" {
    count = 2
    bucket = var.bucket_names[count.index]
    tags = var.tags
  
}
resource "aws_s3_bucket" "example_anuja_set" {
    for_each = var.bucket_names_set
    bucket = each.value
    tags = var.tags
    depends_on = [ aws_s3_bucket.example_anuja ]
}