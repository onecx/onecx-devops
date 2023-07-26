module "global" {
  source = "../../modules/global_constants"
}

module "repository" {
  source = "../../modules/repository"

  repository_name = "onecx-db-postgresql-operator"
  team_permission = "maintain"
  team_id         = module.team.team_id
  application_ids = module.global.applications_sonarcloud_id
}

module "team" {
  source = "../../modules/team"

  team_name        = "onecx-k8s"
  team_description = "onecx-k8s"
  team_file_path   = "products/onecx-k8s/team.csv"
  repository_name  = module.repository.repository_name
  repository_id    = module.repository.repository_id
}

module "sonarcloud" {
  source = "../../modules/sonarcloud"

  organisation    = module.global.organisation
  repository_name = module.repository.repository_name
}

module "dependencies" {
  source = "../../modules/dependencies"

  repository_name = module.repository.repository_name
}