terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "app.terraform.io/learn-hashiscott/s3-webapple/aws"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}
