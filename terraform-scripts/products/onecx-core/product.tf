
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
}

# APM-SVC
module "onecx-apm-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-apm-svc"
  repository_description = "Onecx APM permisions service"
  team_id                = module.onecx-core.team_id
}

# ONECX-PORTAL-IAM-KC-SVC
module "onecx-portal-iam-kc-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-portal-iam-kc-svc"
  repository_description = "Onecx portal IAM keycloak service"
  team_id                = module.onecx-core.team_id
}
