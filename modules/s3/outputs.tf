output "bucket_name" {
  value       = aws_s3_bucket.mys3.bucket
  description = "S3 bucket name"
}

output "bucket_arn" {
  value       = aws_s3_bucket.mys3.arn
  description = "S3 bucket ARN"
}
