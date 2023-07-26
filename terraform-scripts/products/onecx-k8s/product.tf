module "global" {
  source = "../../modules/global_constants"
}

module "repository" {
  source = "../../modules/repository"

  repository_name        = "onecx-db-postgresql-operator"
  repository_description = "description"
  team_permission        = "maintain"
  team_id                = module.team.team_id
  application_ids        = module.global.applications_sonarcloud_id
}

module "team" {
  source = "../../modules/team"

  team_name        = "onecx-k8s"
  team_description = "onecx-k8s"
  team_file_path   = "products/onecx-k8s/team.csv"
  repository_name  = module.repository.repository_name
  repository_id    = module.repository.repository_id
}

module "quarkus" {
  source = "../../modules/quarkus"

  repository_name = module.repository.repository_name
}