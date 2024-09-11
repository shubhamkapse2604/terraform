resource "aws_instance" "newinst" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = "jayohio"
    subnet_id = aws_subnet.public.id
    vpc_security_group_ids = [aws_security_group.sgname.id]
    tags = {
      name= "myec2"
    }
  
}
