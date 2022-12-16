# Descomentar una vez el storage este creado para configurar el remote state.
#terraform {
#  backend "gcs" {
#    #Sustituir el nombre del bucket
#    bucket = "{ NOMBRE_BUCKET }"
#    prefix = "terraform/state/example-00/"
#  }
#}

terraform {
  backend "s3" {
    bucket = "tfstate-s3-with-terraform-0011"
    key    = "terraform/state/example-00"
    region = "us-east-1"
  }
}