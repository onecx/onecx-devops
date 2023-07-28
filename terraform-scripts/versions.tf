terraform {
  required_providers {
    sonarcloud = {
      source  = "rewe-digital/sonarcloud"
      version = "0.5.2"
    }
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
  }
  required_version = "~> 1.5.2"
}