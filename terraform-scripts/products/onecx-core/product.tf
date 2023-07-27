module "global" {
  source = "../../modules/global_constants"
}

# TEAM ONECX-CORE
module "onecx-core" {
  source = "../../modules/github/team"
  team_name        = "onecx-core"
  team_description = "onecx core services team"
  team_file_path   = "products/onecx-core/team.csv"
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
  application_ids        = module.global.applications_sonarcloud_id
  check_app_id           = module.global.sonarcloud_id
}

# APM-UI
module "repository-onecx-apm-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-apm-ui"
  repository_description = "Onecx APM permisions UI"
  team_id                = module.onecx-core.team_id
  application_ids        = module.global.applications_sonarcloud_id
  check_app_id           = module.global.sonarcloud_id
}