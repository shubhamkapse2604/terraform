resource "aws_instance" "name-reffer-github-their-own" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  
}
  
