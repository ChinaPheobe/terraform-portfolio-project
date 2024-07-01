terraform {
  backend "s3" {
    bucket         = "chi-my-tf-website-state"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "chi-db-website-table"
  }
}


