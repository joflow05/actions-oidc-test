module "s3" {
  source = "git@github.com:joflow05/s3-module.git//s3-module?ref=v1.0.0"
}
#
##Backend configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "class400kops"
    region  = "us-east-1"
    key     = "s3/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}