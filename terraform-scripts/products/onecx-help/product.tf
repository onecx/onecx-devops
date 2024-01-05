
# TEAM ONECX-HELP
module "onecx-help-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-help"
  team_description = "OneCx help services team"
  team_members_file_path   = "products/onecx-help/team.csv"
}

# ONECX-HELP
module "onecx-help" {
  source = "../../modules/product"
  repository_name        = "onecx-help"
  repository_description = "OneCx help"
  team_id                = module.onecx-help-team.team_id
  team_name              = module.onecx-help-team.team_name
}

# ONECX-HELP-SVC
module "onecx-help-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-help-svc"
  repository_description = "OneCX Help Management SVC"
  team_id                = module.onecx-help-team.team_id
}

# ONECX-HELP-BFF
module "onecx-help-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-help-bff"
  repository_description = "OneCX Help Management BFF"
  team_id                = module.onecx-help-team.team_id
}

# ONECX-HELP-UI
module "onecx-help-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-help-ui"
  repository_description = "OneCX Help Management UI"
  team_id                = module.onecx-help-team.team_id
}