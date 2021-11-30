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
}
provider "aws" {
  region = var.region
  }