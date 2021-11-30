
#Gerará randomicamente um nome para o bucket
resource "random_pet" "bucket" {
  length = 2
}