resource "aws_s3_bucket" "NEW" {
  bucket = "mybucket123-statefile-conf"

}


#resource "aws_s3_bucket" "refferencenameforbucketinterraform" {
 # bucket = "783895-bucketname"
 # tags = {
  #  name="mybucket"
 # }
  
#}

provider "aws" {
  region = "us-east-2"
}
