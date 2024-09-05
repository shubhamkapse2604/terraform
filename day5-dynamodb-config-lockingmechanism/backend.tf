terraform {
  backend "s3" {
    bucket = "mybucket123-statefile-conf"
    key = "dev/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-state-lock-dynamo1"  # DynamoDB table used for state locking, note: first run "day-5-resources-s3-dynamodb-for-statefile" to create s3 and dynamodb resources
    encrypt = true      # Ensures the state is encrypted at rest in S3

  }
}