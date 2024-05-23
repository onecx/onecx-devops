# TEAM ONECX-DATA-ORCHESTRATOR
module "onecx-data-orchestrator-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-data-orchestrator"
  team_description = "OneCx data orchestrator services team"
  team_members_file_path   = "products/onecx-data-orchestrator/team.csv"
}

# ONECX-DATA-ORCHESTRATOR
module "onecx-data-orchestrator" {
  source = "../../modules/product"
  repository_name        = "onecx-data-orchestrator"
  repository_description = "OneCx data orchestrator"
  team_id                = module.onecx-data-orchestrator-team.team_id
  team_name              = module.onecx-data-orchestrator-team.team_name
}

# ONECX-DATA-ORCHESTRATOR-OPERATOR
module "onecx-data-orchestrator-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-data-orchestrator-operator"
  repository_description = "OneCx data orchestrator operator"
  team_id                = module.onecx-data-orchestrator-team.team_id
}
