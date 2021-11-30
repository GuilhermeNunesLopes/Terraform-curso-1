resource "aws_s3_bucket" "estudodoterraform" {
  bucket = "${random_pet.bucket.id}j${var.ambiente}x${random_pet.bucket.id}"
  acl    = "private"
  tags = {
    Ambiente = "DEV"
    Regiao   = "Brasil"
  }

}

