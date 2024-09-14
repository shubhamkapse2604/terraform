resource "aws_instance" "name" {
    ami = "ami-05c3dc660cb6907f0"
  instance_type = "t2.micro"
  key_name = "jayohio"
  subnet_id = aws_subnet.day2-sub1.id
  tags = {
    name = "node1"
  }
}