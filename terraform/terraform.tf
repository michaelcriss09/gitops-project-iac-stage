terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49"
    }
  }

  backend "s3" {
    bucket = "vprofileactions34564"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = local.region
}