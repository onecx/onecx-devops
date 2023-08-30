
# TEAM ONECX-PARAMETER
module "onecx-parameter-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-parameter"
  team_description = "onecx parameter management services team"
  team_members_file_path   = "products/onecx-parameter/team.csv"
}

# ONECX-PARAMETER
module "onecx-parameter" {
  source = "../../modules/product"
  repository_name        = "onecx-parameter"
  repository_description = "OneCx Parameter Management"
  team_id                = module.onecx-parameter-team.team_id
  team_name              = module.onecx-parameter-team.team_name
  labels = {
    onecx-parameter-svc = "0ea5e9"
    onecx-parameter-bff = "14b8a6"
    onecx-parameter-ui  = "6366f1"
  }
}

# ONECX-PARAMETER-SVC
module "onecx-parameter-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-parameter-svc"
  repository_description = "OneCx Parameter Management Service"
  team_id                = module.onecx-parameter-team.team_id
}

# ONECX-PARAMETER-BFF
module "onecx-parameter-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-parameter-bff"
  repository_description = "OneCx Parameter Management BFF"
  team_id                = module.onecx-parameter-team.team_id
}

# ONECX-PARAMETER-UI
module "onecx-parameter-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-parameter-ui"
  repository_description = "OneCx Parameter Management UI"
  team_id                = module.onecx-parameter-team.team_id
}