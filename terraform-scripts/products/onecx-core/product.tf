module "global" {
  source = "../../modules/global_constants"
}

module "repository" {
  source = "../../modules/repository"

  repository_name        = "onecx-apm"
  repository_description = "Onecx APM permisions"
  team_permission        = "maintain"
  team_id                = module.team.team_id
  application_ids        = module.global.applications_sonarcloud_id
}

module "product-onecx-apm-svc" {
  source = "../../modules/product"
  repository_name = module.repository.repository_name
}

module "team" {
  source = "../../modules/team"

  team_name        = "onecx-core"
  team_description = "onecx-core"
  team_file_path   = "products/onecx-core/team.csv"
  repository_name  = module.repository.repository_name
  repository_id    = module.repository.repository_id
}

# APM-SVC
module "quarkus-onecx-apm-svc" {
  source = "../../modules/quarkus"
  repository_name = module.repository-onecx-apm-svc.repository_name
}

module "repository-onecx-apm-svc" {
  source = "../../modules/repository"

  repository_name        = "onecx-apm-svc"
  repository_description = "Onecx APM permisions service"
  team_permission        = "maintain"
  team_id                = module.team.team_id
  application_ids        = module.global.applications_sonarcloud_id
}

# APM-UI
module "angular-onecx-apm-ui" {
  source = "../../modules/angular"
  repository_name = module.repository-onecx-apm-ui.repository_name
}

module "repository-onecx-apm-ui" {
  source = "../../modules/repository"

  repository_name        = "onecx-apm-ui"
  repository_description = "Onecx APM permisions UI"
  team_permission        = "maintain"
  team_id                = module.team.team_id
  application_ids        = module.global.applications_sonarcloud_id
}