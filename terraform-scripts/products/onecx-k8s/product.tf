
# TEAM ONECX-K8S
module "onecx-k8s" {
  source = "../../modules/github/team"
  team_name        = "onecx-k8s"
  team_description = "onecx-k8s"
  team_members_file_path   = "products/onecx-k8s/team.csv"
}

# ONECX-K8S
module "onecx-k8s-product" {
  source = "../../modules/product"
  repository_name        = "onecx-k8s"
  repository_description = "OneCx K8S Management"
  team_id                = module.onecx-k8s.team_id
  team_name              = module.onecx-k8s.team_name
}

# POSTGRESQL OPERATOR
module "onecx-k8s-db-postgresql-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-k8s-db-postgresql-operator"
  repository_description = "onecx postgresql schema operator"
  team_id                = module.onecx-k8s.team_id
}

# ONECX-K8S-CRDS
module "onecx-k8s-crds" {
  source = "../../modules/base"
  repository_name        = "onecx-k8s-crds"
  repository_description = "OneCx k8s custom resources"
  team_id                = module.onecx-k8s.team_id
  team_name              = module.onecx-k8s.team_name
}