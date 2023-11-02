
# TEAM ONECX-CORE
module "onecx-core" {
  source = "../../modules/github/team"
  team_name        = "onecx-core"
  team_description = "onecx core services team"
  team_members_file_path   = "products/onecx-core/team.csv"
}

# PORTAL
module "onecx-portal" {
  source = "../../modules/product"
  repository_name        = "onecx-portal"
  repository_description = "Onecx Portal"
  team_id                = module.onecx-core.team_id
  team_name              = module.onecx-core.team_name
  labels = {
    onecx-portal-iam-kc-svc = "14b8a6"
    onecx-portal-svc = "0ea5e9"
    onecx-portal-bff = "14b8a6"
  }
}

# ONECX-PORTAL-IAM-KC-SVC
module "onecx-portal-iam-kc-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-portal-iam-kc-svc"
  repository_description = "Onecx portal IAM keycloak service"
  team_id                = module.onecx-core.team_id
}

# ONECX-PORTAL-SVC
module "onecx-portal-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-portal-svc"
  repository_description = "Onecx portal service"
  team_id                = module.onecx-core.team_id
}

# ONECX-PORTAL-SVC
module "onecx-portal-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-portal-bff"
  repository_description = "Onecx portal bff service"
  team_id                = module.onecx-core.team_id
}
