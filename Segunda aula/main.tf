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
    region = var.region
}

resource "aws_instance" "linux_do_julermi" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tag
}