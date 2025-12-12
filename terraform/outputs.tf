output "cloudfront_distribution_id" {
  value       = aws_cloudfront_distribution.website.id
  description = "CloudFront distribution ID"
}

output "cloudfront_domain" {
  value       = aws_cloudfront_distribution.website.domain_name
  description = "CloudFront distribution domain name"
}

output "s3_bucket" {
  value       = aws_s3_bucket.website.bucket
  description = "S3 bucket name for website files"
}

output "s3_upload_path" {
  value       = "s3://${aws_s3_bucket.website.bucket}/"
  description = "S3 upload path for website files"
}

output "website_url" {
  value       = "https://${var.domain_name}"
  description = "Website URL"
}
