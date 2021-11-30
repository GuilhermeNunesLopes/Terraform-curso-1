terraform {
  #required_version = "0.14.4" - setando a versão fixa do terraform
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.67.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
#Nos campos abaixo, estou transferindo o terraform.tfsate para se transformar em um remote state no s3. Vale lembrar que preciso ter o bucket criado primeiro
  backend "s3" {
 
  }


}


provider "aws" {
  region = var.region
}

#Com o parametro data eu consigo trazer dados da AWS para o meu terraform 
data "aws_caller_identity" "current" {}

#Logo abaixo estou criando o bucket que será o meu remotestate
resource "aws_s3_bucket" "remotestate" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  versioning {
    enabled = true
  }

  tags = {
    Tipo         = "Remote-State"
    Owner        = "Guilherme"
    "Gerado por" = "Terraform"
    "Version" = "V2"
  }

}

