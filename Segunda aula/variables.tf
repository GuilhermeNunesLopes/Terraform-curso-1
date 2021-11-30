variable "region" {
  type = string
  description = ""
  default = "us-east-1"
}

variable "instance_ami" {
  type = string
  description = ""
  default = "ami-000245c336b590ae0"
}

variable "instance_type" {
  type = string
  description = ""
  default = "t2.micro"
}

variable "instance_tag" {
  type = map(string)
  description = ""
  default = {

    Name = "Instancia do Ju"
    Type = "Linux"
    Country = "BR"
  }
}