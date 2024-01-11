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
    bucket = "devops-infra-backup"
    key    = "terraform/backend/terraform.tfstate"
    region = "us-east-1"
  }
}


module vpc {
  source = "../vpc"
}
