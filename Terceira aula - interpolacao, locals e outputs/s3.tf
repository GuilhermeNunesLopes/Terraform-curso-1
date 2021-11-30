resource "aws_s3_bucket" "opsbucketbr" {
  bucket = "${random_string.bucket.id}-opsbr" #um bucket s3 só pode ter nomes minusculos logo temos que garantir que ele só gerará os dados em minusco ou lower case
  acl    = "private"
  tags = {
    Ambiente = "DEV"
    Regiao   = "Brasil"
  }

}

