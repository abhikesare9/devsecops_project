output s3_bucket {
  value       = aws_s3_bucket.s3_bucket.id
  sensitive   = false
  description = "s3 bucket name"
}
