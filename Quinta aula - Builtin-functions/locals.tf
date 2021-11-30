locals {
  instance_number = lookup(var.instance_number, var.ambiente)

  file_ext = "zip"
  object_name = "arquivo-gerado-template"

  common_tag = {
      "Owner" = "Julermi"
      "Year" = "2021"
  }
}