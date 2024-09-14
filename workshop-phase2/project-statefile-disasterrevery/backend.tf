terraform {
  backend "s3" {
    bucket         = "primary1-terraform-statefilebucket"
    key            = "vpc/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}