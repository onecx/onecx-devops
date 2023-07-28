
# TEAM ONECX-K8S
module "onecx-k8s" {
  source = "../../modules/github/team"
  team_name        = "onecx-k8s"
  team_description = "onecx-k8s"
  team_members_file_path   = "products/onecx-k8s/team.csv"
}

# POSTGRESQL OPERATOR
module "onecx-db-postgresql-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-db-postgresql-operator"
  repository_description = "onecx postgresql schema operator"
  team_id                = module.onecx-k8s.team_id
}
