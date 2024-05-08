# TEAM ONECX-FAVORITES
module "onecx-favorites-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-favorites"
  team_description = "OneCx favorites services team"
  team_members_file_path   = "products/onecx-favorites/team.csv"
}

# ONECX-FAVORITES
module "onecx-favorites" {
  source = "../../modules/product"
  repository_name        = "onecx-favorites"
  repository_description = "OneCx favorites"
  team_id                = module.onecx-favorites-team.team_id
  team_name              = module.onecx-favorites-team.team_name
}

# ONECX-FAVORITES-SVC
module "onecx-favorites-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-favorites-svc"
  repository_description = "OneCX favorites SVC"
  team_id                = module.onecx-favorites-team.team_id
}

# ONECX-FAVORITES-BFF
module "onecx-favorites-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-favorites-bff"
  repository_description = "OneCX favorites BFF"
  team_id                = module.onecx-favorites-team.team_id
}

# ONECX-FAVORITES-UI
module "onecx-favorites-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-favorites-ui"
  repository_description = "OneCX favorites UI"
  team_id                = module.onecx-favorites-team.team_id
}