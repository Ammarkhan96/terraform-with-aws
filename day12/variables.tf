variable "aws_region" {
  description = "The AWS region to create resources in."
  type = string
  default = "eu-north-1"
}

variable "bucket_prefix" {
  description = "Prefix for s3 Bucket name."
  type = string
  default = "my-static-website-001"
}

