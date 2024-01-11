provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


terraform {
  backend "s3" {
    bucket = var.bucket_name
    key    = "terraform/backend/terraform.tfstate"
    region = "us-east-1"
  }
}