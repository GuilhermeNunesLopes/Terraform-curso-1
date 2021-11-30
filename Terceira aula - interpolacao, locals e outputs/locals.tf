locals {

  common_tags = {
    Ambiente = "DEV"
    Regiao   = "Brasil"
  }

  file_path = "ops.txt"

  file_path-random = "${random_string.bucket.id}.json"
}