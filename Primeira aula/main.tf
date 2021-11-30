terraform {
#required_version = "0.14.4" - setando a versão fixa do terraform
required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "3.67.0"
        }
    }

 }


provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "testando-bucket" {
  bucket = "julermibucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   =  "Terraform"
  }
}