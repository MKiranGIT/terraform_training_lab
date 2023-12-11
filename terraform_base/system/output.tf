output "s3-bucket-name" {
value = aws_s3_bucket.my_bucket.id
}

output "s3-bucket-region" {
value = aws_s3_bucket.my_bucket.region
}

