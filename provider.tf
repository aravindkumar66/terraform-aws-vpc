terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket         = "ak-remote-state"
    key            = "expense-vpc"
    region         = "us-east-1"
    dynamodb_table = "ak-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
