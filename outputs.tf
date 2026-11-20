output "bucket_name" {
  value = aws_s3_bucket.website.id
}

output "website_url" {
  value = "http://${aws_s3_bucket_website_configuration.website.website_endpoint}"
}
