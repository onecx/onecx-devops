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

module "onecx-parameter" {
  source = "./products/onecx-parameter"
}

module "onecx-tenant" {
  source = "./products/onecx-tenant"
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

module "onecx-workspace" {
  source = "./products/onecx-workspace"
}

module "onecx-help" {
  source = "./products/onecx-help"
}

module "onecx-search-config" {
  source = "./products/onecx-search-config"
}

module "onecx-user-profile" {
  source = "./products/onecx-user-profile"
}

module "onecx-permission" {
  source = "./products/onecx-permission"
}

module "onecx-iam" {
  source = "./products/onecx-iam"
}

module "onecx-welcome" {
  source = "./products/onecx-welcome"
}

module "onecx-shell" {
  source = "./products/onecx-shell"
}
