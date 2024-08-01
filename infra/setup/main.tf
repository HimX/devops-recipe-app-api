terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0" # TODO: this version can change
    }
  }

  backend "s3" {
    bucket         = "emanuel-devops-recipe-app-tf-state"
    key            = "tf-state-setup"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "devops-recipe-app-api-tf-lock"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}
