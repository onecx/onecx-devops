
# TEAM ONECX-WELCOME
module "onecx-welcome-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-welcome"
  team_description = "OneCx Welcome services team"
  team_members_file_path   = "products/onecx-welcome/team.csv"
}

# ONECX-WELCOME
module "onecx-welcome" {
  source = "../../modules/product"
  repository_name        = "onecx-welcome"
  repository_description = "OneCX Welcome Management Product"
  team_id                = module.onecx-welcome-team.team_id
  team_name              = module.onecx-welcome-team.team_name
}

# ONECX-WELCOME-SVC
module "onecx-welcome-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-welcome-svc"
  repository_description = "OneCX Welcome Management Service"
  team_id                = module.onecx-welcome-team.team_id
}

# ONECX-WELCOME-BFF
module "onecx-welcome-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-welcome-bff"
  repository_description = "OneCX Welcome Management BFF"
  team_id                = module.onecx-welcome-team.team_id
}

# ONECX-WELCOME-UI
module "onecx-welcome-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-welcome-ui"
  repository_description = "OneCX Welcome Management UI"
  team_id                = module.onecx-welcome-team.team_id
}
