variable "ami" {
  description = "values taking from main.tf"
  type = string
  default = ""
}

variable "instance_type" {
  type = string
  default = "t2.nano"
}

variable "key_name" {
    type = string
    default = ""
  
}
