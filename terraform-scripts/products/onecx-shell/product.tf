
# TEAM ONECX-SHELL
module "onecx-shell-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-shell"
  team_description = "OneCx shell services team"
  team_members_file_path   = "products/onecx-shell/team.csv"
}

# ONECX-SHELL
module "onecx-shell" {
  source = "../../modules/product"
  repository_name        = "onecx-shell"
  repository_description = "OneCx shell"
  team_id                = module.onecx-shell-team.team_id
  team_name              = module.onecx-shell-team.team_name
}

# ONECX-SHELL-BFF
module "onecx-shell-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-shell-bff"
  repository_description = "OneCx shell BFF"
  team_id                = module.onecx-shell-team.team_id
}

# ONECX-SHELL-UI
module "onecx-shell-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-shell-ui"
  repository_description = "OneCx shell UI"
  team_id                = module.onecx-shell-team.team_id
}
