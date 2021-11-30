resource "aws_s3_bucket" "opsbucketbr" {
  bucket = "${random_string.bucket.id}-opsbr" #um bucket s3 só pode ter nomes minusculos logo temos que garantir que ele só gerará os dados em minusco ou lower case
  acl    = "private"
  tags   = local.common_tags

}

#Subindo um objeto dentro do bucket e utilizando o locals para salvar o nome.
resource "aws_s3_bucket_object" "this-name" {
  bucket = aws_s3_bucket.opsbucketbr.bucket
  key    = "teste/${local.file_path}"
  source = local.file_path
  etag   = filemd5(local.file_path)
}

#locals serve para simplificarmos a chamada de um atributo, variavel, função que vai se repetir muitas vezes.