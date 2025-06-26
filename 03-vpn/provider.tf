terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"  # AWS provider version, not terraform version
      version = "6.0.0"
    }
  }

  backend "s3" {
    bucket = "daws90s-remote-state"
    key    = "default"
    region = "us-east-1"
    dynamodb_table = "daws90s-locking"
  }
}

provider "aws" {
   region = "us-east-1"
}