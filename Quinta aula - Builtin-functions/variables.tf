variable "ambiente" {

}

variable "region" {
  type        = string
  description = ""
  default     = "us-east-1"

}

variable "instance_ami" {
  type = string
  default = "ami-04902260ca3d33422"
  description = "imagem da instancia ec2"


  validation {
    condition = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    error_message = "O valor de instance_ami deve ser um valor que começa com \"ami-\"."
  }
}

variable "instance_number" {
  type = object ({
    dev = number
    prod = number
  })
  description = "numero de instancias criadas"
default = {
  dev = 1
  prod = 2
}

}


variable "instance_type" {
type = object ({
  dev = string
  prod = string
})
description = ""

default = {
  dev = "t2.micro"
  prod = "t2.micro"
}
}
  
