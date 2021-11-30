data "aws_ami" "ubuntu" {
  
  owners = ["amazon"]
  most_recent = true
  name_regex = "ubuntu"

   filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

