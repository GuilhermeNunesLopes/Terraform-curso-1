resource "aws_instance" "web1" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  
}