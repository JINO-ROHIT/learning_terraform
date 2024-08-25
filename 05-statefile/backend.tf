terraform {
  backend "s3" {
    bucket         = "jino-s3-demo-xyz"
    key            = "jino/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

# run this second