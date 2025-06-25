resource "aws_instance" "name-reffering-github" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  
}
  
