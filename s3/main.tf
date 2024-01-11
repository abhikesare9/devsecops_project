resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "S3Bucket"
    Department = "DevOps_infra"
  }
}

resource "aws_s3_bucket_object" "base_folder" {
    bucket  = aws_s3_bucket.s3_bucket.id
    acl     = "private"
    key     =  "terraform/backend/"
}