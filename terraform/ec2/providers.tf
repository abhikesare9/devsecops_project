provider "aws" {
  region = var.region
  profile = var.profile
}


module vpc {
  source = "../vpc"
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
    bucket = "devops-infra-backup-terraform"
    key    = "terraform/backend/terraform.tfstate"
    region = "us-west-1"
    profile = "dev"
  }
}
