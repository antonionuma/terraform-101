# Descomentar una vez el storage este creado para configurar el remote state.
##Este ejemplo crea una instancia de VM con Debian 9 de tamaño f1-micro en europe-west1-c 

#resource "google_compute_instance" "default" {
#  name         = "instance-vm-01"
#  machine_type = "f1-micro"
#  zone         = "europe-west1-c"
#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-9"
#    }
#  }
#  network_interface {
#    network = "default"
#  }
# }

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance-Terraform"
  }
}