variable "region" {
  type = string
  description = ""
  default = "us-east-1"
}

variable "instance_ami" {
  type = string
  description = ""
  default = "ami-0d718c3d715cec4a7"
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