
#Gerará randomicamente um nome para o bucket
resource "random_string" "bucket" {
  length  = 50
  special = false
  lower   = true
  upper   = false

}