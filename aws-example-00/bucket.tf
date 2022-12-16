# resource "google_storage_bucket" "tf-state" {
#   name          = "{ NOMBRE_BUCKET }"
#   location      = "EU"
#   force_destroy = false
#   # Es recomendable activar el versioning para los state files para poder hacer roll-back a una versión anterior.
#   uniform_bucket_level_access = true
#   versioning {
#     enabled = true
#   }

resource "aws_s3_bucket" "tfstate-bucket-0011" {
   bucket = "tfstate-s3-with-terraform"
   acl = "private"
   versioning {
      enabled = true
   }
   tags = {
     Name = "tfstate.bucket"
     Environment = "Test"
   }
}