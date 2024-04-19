
# TEAM ONECX-PRODUCT-STORE
module "onecx-product-store-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-product-store"
  team_description = "OneCx product store services team"
  team_members_file_path   = "products/onecx-product-store/team.csv"
}

# ONECX-PRODUCT-STORE
module "onecx-product-store" {
  source = "../../modules/product"
  repository_name        = "onecx-product-store"
  repository_description = "OneCx product store"
  team_id                = module.onecx-product-store-team.team_id
  team_name              = module.onecx-product-store-team.team_name
}

# ONECX-PRODUCT-STORE-SVC
module "onecx-product-store-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-product-store-svc"
  repository_description = "OneCx product store service"
  team_id                = module.onecx-product-store-team.team_id
}

# ONECX-PRODUCT-STORE-BFF
module "onecx-product-store-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-product-store-bff"
  repository_description = "OneCx product store BFF"
  team_id                = module.onecx-product-store-team.team_id
}

# ONECX-PRODUCT-STORE-UI
module "onecx-product-store-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-product-store-ui"
  repository_description = "OneCx product store UI"
  team_id                = module.onecx-product-store-team.team_id
}

# ONECX-PRODUCT-STORE-OPERATOR
module "onecx-product-store-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-product-store-operator"
  repository_description = "OneCx product store k8s operator"
  team_id                = module.onecx-product-store-team.team_id
}

# ONECX-PRODUCT-STORE-MFE-OPERATOR
module "onecx-product-store-mfe-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-product-store-mfe-operator"
  repository_description = "OneCx product store mfe k8s operator"
  team_id                = module.onecx-product-store-team.team_id
}


# ONECX-PRODUCT-STORE-MS-OPERATOR
module "onecx-product-store-ms-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-product-store-ms-operator"
  repository_description = "OneCx product store ms k8s operator"
  team_id                = module.onecx-product-store-team.team_id
}

# ONECX-PRODUCT-STORE-SLOT-OPERATOR
module "onecx-product-store-slot-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-product-store-slot-operator"
  repository_description = "OneCx product store slot k8s operator"
  team_id                = module.onecx-product-store-team.team_id
}
