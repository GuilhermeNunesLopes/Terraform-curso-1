#Com o parametro data eu consigo trazer dados da AWS para o meu terraform 
data "aws_caller_identity" "current" {}

#Logo abaixo estou criando o bucket que será o meu remotestate
resource "aws_s3_bucket" "remotestate" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
  
  force_destroy = true #permite deletar o bucket mesmo com o versionamento ativo.
  versioning {
    enabled = true
  }

  tags = local.common_tag

}