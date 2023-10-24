
# TEAM ONECX-APM
module "onecx-apm-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-apm"
  team_description = "OneCx APM services team"
  team_members_file_path   = "products/onecx-apm/team.csv"
}

# ONECX-APM
module "onecx-apm" {
  source = "../../modules/product"
  repository_name        = "onecx-apm"
  repository_description = "OneCx APM"
  team_id                = module.onecx-apm-team.team_id
  team_name              = module.onecx-apm-team.team_name
  labels = {
    onecx-apm-svc = "0ea5e9"
    onecx-apm-bff = "14b8a6"
    onecx-apm-ui  = "6366f1"
  }
}

# ONECX-APM-SVC
module "onecx-apm-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-apm-svc"
  repository_description = "OneCx APM Service"
  team_id                = module.onecx-apm-team.team_id
}

# ONECX-APM-BFF
module "onecx-apm-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-apm-bff"
  repository_description = "OneCx APM BFF"
  team_id                = module.onecx-apm-team.team_id
}

# ONECX-APM-UI
module "onecx-apm-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-apm-ui"
  repository_description = "OneCx APM UI"
  team_id                = module.onecx-apm-team.team_id
}