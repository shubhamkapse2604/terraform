variable "ami" {
  description = "inserting all values of ami to main.tf"
  type = string
  default = "ami-05c3dc660cb6907f0"
}


variable "instance_type" {
  description = "inserting instance type to main.tf"
  type = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
  default = "jayohio"
}