terraform {
  cloud {
    organization = "onecx-devops-github"

    workspaces {
      name = "devops"
    }
  }
}

provider "github" {
  owner = "onecx"
}

provider "sonarcloud" {
  organization = "onecx"
}

module "onecx-k8s" {
  source = "./products/onecx-k8s"
}

module "onecx-core" {
  source = "./products/onecx-core"
}