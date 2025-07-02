terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "82s-tfremote-states"  
    key    = "vpc-test"
    region = "us-east-1" 
    dynamodb_table = "82s-state-locking"   
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}