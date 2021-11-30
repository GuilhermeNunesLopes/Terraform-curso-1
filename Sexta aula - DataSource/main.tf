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


}


provider "aws" {
  region = var.region
}