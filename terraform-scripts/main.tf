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

module "onecx-k8s" {
  source = "./products/onecx-k8s"
}

module "onecx-core" {
  source = "./products/onecx-core"
}

module "onecx-parameter" {
  source = "./products/onecx-parameter"
}

module "onecx-tenant" {
  source = "./products/onecx-tenant"
}

module "onecx-apm" {
  source = "./products/onecx-apm"
}

module "onecx-announcement" {
  source = "./products/onecx-announcement"
}

module "onecx-theme" {
  source = "./products/onecx-theme"
}

module "onecx-product-store" {
  source = "./products/onecx-product-store"
}