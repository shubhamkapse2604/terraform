resource "aws_instance" "testdev" {
  ami = "ami-05c3dc660cb6907f0"
  instance_type = "t2.nano"
  availability_zone = "us-east-2c"
  key_name = "jayohio"
  tags = {
    name= "testdev"
  }



#below examples are for lifecycle meta_arguments 

 # lifecycle {
 #   create_before_destroy = true    #this attribute will create the new object first and then destroy the old one
 #  }

 # lifecycle {
 #  prevent_destroy = true   #Terraform will error when it attempts to destroy a resource when this is set to true:
 # }


  # lifecycle {
  #   ignore_changes = [tags,] #This means that Terraform will never update the object but will be able to create or destroy it.
  # }
}