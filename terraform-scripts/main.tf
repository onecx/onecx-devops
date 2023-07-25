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

module "products" {
  source = "./products/onecx-k8s"
}