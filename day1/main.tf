terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "eu-north-1"
}

# create a s3 bucket
resource "aws_s3_bucket" "tf-test-ak-bucket" {
  bucket = "my-tf-test-ak-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}