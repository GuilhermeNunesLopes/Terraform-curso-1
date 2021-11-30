output "bucket_name" {
  value = aws_s3_bucket.opsbucketbr.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.opsbucketbr.arn
  description = ""
}

output "bucket_domain_name" {
  value = aws_s3_bucket.opsbucketbr.bucket_domain_name
  description = ""
}

output "bucket_file_path" {
  value = "${aws_s3_bucket.opsbucketbr.bucket}/${aws_s3_bucket_object.this-name.key}"
  description = ""
}