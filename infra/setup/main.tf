terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "kc-recipe-api-tf-state-123"
    key            = "tf-state-setup"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "kc-recipe-api-tf-lock"
  }
}

provider "aws" {
  region = "ap-south-1"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}
