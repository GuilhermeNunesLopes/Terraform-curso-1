resource "random_pet" "bucket-new" {
  length = 5
}

resource "aws_s3_bucket" "this" {
  
  bucket = "${random_pet.bucket-new.id}-${var.ambiente}"
  tags = local.common_tag
}
#Estou criando um bucket utilizando templates.
resource "aws_s3_bucket_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  key = "${uuid()}.${local.file_ext}"
  source = data.archive_file.json.output_path
  etag = filemd5(data.archive_file.json.output_path)
  content_type = "application/zip"
}