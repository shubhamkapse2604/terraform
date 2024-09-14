provider "aws" {
  region = "us-east-2"
  alias = "east"
}


provider "aws" {
  alias  = "south"
  region = "ap-south-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.59.0"
    }
  }
}