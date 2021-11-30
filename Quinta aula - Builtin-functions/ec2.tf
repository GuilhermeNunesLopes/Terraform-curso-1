resource "aws_instance" "servidor" {
    #cont controla a quantidade de recursos que vamos criar desse tipo
  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami = var.instance_ami
  instance_type = lookup(var.instance_type, var.ambiente) #procura o tipo da instancia dentro da variavel

  tags = merge( 
      local.common_tag,
      {
          Projeto = "Curso AWS Terraform"
          Ambiente = format("%s", var.ambiente)
          Name = format("Instancia %d", count.index +1)
      }
  )
}