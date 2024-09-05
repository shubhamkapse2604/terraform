resource "aws_instance" "dev2" {
    ami = "ami-09efc42336106d2f2"
   instance_type = "t2.nano"
   key_name = "jayohio"
   tags = {
    name = "newdev"
   }
   tags_all = {
    name = "newdev"
   }
}



#command terraform import aws_instance.dev2 i-0e3f670f4ee619528