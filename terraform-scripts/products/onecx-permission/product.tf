
# TEAM ONECX-PERMISSION
module "onecx-permission-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-permission"
  team_description = "OneCx permission services team"
  team_members_file_path   = "products/onecx-permission/team.csv"
}

# ONECX-PERMISSION
module "onecx-permission" {
  source = "../../modules/product"
  repository_name        = "onecx-permission"
  repository_description = "OneCx permission"
  team_id                = module.onecx-permission-team.team_id
  team_name              = module.onecx-permission-team.team_name
  labels = {
    onecx-permission-svc          = "0ea5e9"
    onecx-permission-bff          = "14b8a6"
    onecx-permission-ui           = "6366f1"
  }
}

# ONECX-PERMISSION-SVC
module "onecx-permission-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-permission-svc"
  repository_description = "OneCx permission service"
  team_id                = module.onecx-permission-team.team_id
}

# ONECX-PERMISSION-BFF
module "onecx-permission-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-permission-bff"
  repository_description = "OneCx permission BFF"
  team_id                = module.onecx-permission-team.team_id
}

# ONECX-PERMISSION-UI
module "onecx-permission-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-permission-ui"
  repository_description = "OneCx permission UI"
  team_id                = module.onecx-permission-team.team_id
}
