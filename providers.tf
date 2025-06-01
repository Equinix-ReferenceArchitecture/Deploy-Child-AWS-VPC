terraform {
  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = "2.4.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.63.1"

    }  
  }
}


provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
