module "global" {
  source = "../../modules/global_constants"
}

# TEAM ONECX-K8S
module "onecx-k8s" {
  source = "../../modules/github/team"
  team_name        = "onecx-k8s"
  team_description = "onecx-k8s"
  team_file_path   = "products/onecx-k8s/team.csv"
}

# POSTGRESQL OPERATOR
module "onecx-db-postgresql-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-db-postgresql-operator"
  repository_description = "onecx postgresql schema operator"
  team_id                = module.onecx-k8s.team_id
  application_ids        = module.global.applications_sonarcloud_id
  check_app_id           = module.global.sonarcloud_id
}
