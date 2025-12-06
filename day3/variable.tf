variable "environment" {
    description = "Environment name"
    type = string
    default = "staging"
}

variable "bucket_name" {
    description = "s3 Bucket name"
    type = string
    default = "my-terraform-bucket"
}