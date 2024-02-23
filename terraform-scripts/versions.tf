terraform {
  backend "s3" {
    bucket = "onecx-terraform-github"
    key    = "github/terraform.tfstate"
    region = "eu-central-1"
  }  
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
    sonarcloud = {
      source  = "rewe-digital/sonarcloud"
      version = "0.5.2"
    }
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.65"
     }
  }
  required_version = "~> 1.5.2"
}