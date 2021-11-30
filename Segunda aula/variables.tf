variable "ambiente" {
  type        = string
  description = ""
}

variable "region" {
  type        = string
  description = ""

}

variable "instance_ami" {
  type        = string
  description = ""

}

variable "instance_type" {
  type        = string
  description = ""

}

variable "instance_tag" {
  type        = map(string)
  description = ""
  default = {

    Name    = "Instancia do Ju"
    Type    = "Linux"
    Country = "BR"
  }
}