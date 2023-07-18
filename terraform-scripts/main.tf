provider "github" {
  owner = local.organisation
}

provider "sonarcloud" {
  organization = local.organisation
}

terraform {
  backend "remote" {
    organization = "onecx"

    workspaces {
      name = "devops"
    }
  }
}

locals {
  organisation = "onecx"
  applications = {
    sonarcloud = "39077913"
  }
}

module "products" {
  source = "./products/onecx-k8s"
}