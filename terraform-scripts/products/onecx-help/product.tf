
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
  labels = {
    onecx-help-svc = "0ea5e9"
    onecx-help-bff = "14b8a6"
    onecx-help-ui  = "6366f1"
  }
}

# ONECX-HELP-SVC
module "onecx-help-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-help-svc"
  repository_description = "OneCx help Service"
  team_id                = module.onecx-help-team.team_id
}

# ONECX-HELP-BFF
module "onecx-help-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-help-bff"
  repository_description = "OneCx help BFF"
  team_id                = module.onecx-help-team.team_id
}

# ONECX-HELP-UI
module "onecx-help-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-help-ui"
  repository_description = "OneCx help UI"
  team_id                = module.onecx-help-team.team_id
}