terraform {

     backend "s3" {

    bucket = "sampletutorial-terraform-state"

    key    = "dev/terraform.tfstate"

    region = "eu-north-1"

    encrypt = true

    use_lockfile = true

  }

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "6.24.0"

    }

  }

}



provider "aws" {

  region = "eu-north-1"

}





# create s3 bucket



resource "aws_s3_bucket" "sampletutorial-terraform-state-1234" {

  bucket = "sampletutorial-terraform-state-1234"



  tags = {

    Name        = "My bucket"

    Environment = "Dev"

  }

}

