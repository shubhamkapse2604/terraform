resource "aws_s3_bucket" "NEW" {
  bucket = "newohiobucket543"

}


resource "aws_s3_bucket" "refferencenameforbucketinterraform" {
  bucket = "783895-bucketname"
  tags = {
    name="mybucket"
  }
  
}

provider "aws" {
  region = "us-east-2"
}
