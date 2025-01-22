terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  backend "s3" {
    bucket = "aws-remote-state"
    key    = "expense-app-alb-dev"
    region = "us-east-1"
    dynamodb_table = "aws-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
