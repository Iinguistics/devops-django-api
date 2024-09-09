terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket               = "devops-django-api-tf-state"
    key                  = "tf-state-deploy"
    region               = "us-east-1"
    encrypt              = true
    dynamodb_table       = "devops-django-api-tf-lock"
    workspace_key_prefix = "tf-state-deploy-env"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      MangeBy     = "Terraform/deploy"
    }
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}

data "aws_region" "current" {}
