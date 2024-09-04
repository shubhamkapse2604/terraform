provider "aws" {
  region = "us-east-2"
}



resource "aws_instance" "ec2" {
    ami = "ami-05c3dc660cb6907f0"
   instance_type = "t2.micro"
   key_name = "jayohio"
   availability_zone = "us-east-2a"
}