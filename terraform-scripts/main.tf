terraform {
  cloud {
    organization = "onecx-devops-github"

    workspaces {
      name = "devops"
    }
  }
}

provider "github" {
  owner = local.organisation
}

provider "sonarcloud" {
  organization = local.organisation
}

locals {
  organisation = "onecx"
  applications = {
    sonarcloud = "35827638"
  }
}

module "products" {
  source = "./products/onecx-k8s"
}