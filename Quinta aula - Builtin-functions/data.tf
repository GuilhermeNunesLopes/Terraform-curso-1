data "template_file" "json" {
  template = file("template.json.tpl")

  vars = {
    age = "22"
    eye = "Brown"
    name = "Guilherme"
    gender = "Male"
  }
}

#Essa função pega o arquivo que eu quero e converte para o que você desejar no caso eu setei para ZIP.
data "archive_file" "json" {
  type = local.file_ext
  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}" # esse path.module é uma palavra reservada do terraform que retorna o caminho que esta sendo executado o terraform.

source {
 content = data.template_file.json.rendered
 filename = "${local.object_name}.json"
}



}
