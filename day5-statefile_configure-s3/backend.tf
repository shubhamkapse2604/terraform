terraform {
  backend "s3" {
    bucket = "mybucket123-statefile-conf"
    key = "dev/terraform.tfstate"
    region = "us-east-2"
    
  }
}