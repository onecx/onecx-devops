module "global" {
  source = "../../modules/global_constants"
}

module "example-repository" {
  source = "../../modules/repository"

  repository_name = "onecx-db-postgresql-operator"
  team_permission = "maintain"
  team_id         = module.example-team.team_id
  application_ids = module.global.applications_sonarcloud_id
}

module "example-team" {
  source = "../../modules/team"

  team_name        = "onecx-k8s"
  team_description = "onecx-k8s"
  team_file_path   = "products/onecx-k8s/team.csv"
  repository_name  = module.example-repository.repository_name
  repository_id    = module.example-repository.repository_id
}

module "sonar" {
  source = "../../modules/sonarcloud"

  organisation    = module.global.organisation
  repository_name = module.example-repository.repository_name
}
