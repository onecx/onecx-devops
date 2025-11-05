
# TEAM ONECX-BOOKMARK
module "onecx-bookmark-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-bookmark"
  team_description = "onecx bookmark management services team"
  team_members_file_path   = "products/onecx-bookmark/team.csv"
}

# ONECX-BOOKMARK
module "onecx-bookmark" {
  source = "../../modules/product"
  repository_name        = "onecx-bookmark"
  repository_description = "OneCx Bookmark Management"
  team_id                = module.onecx-bookmark-team.team_id
  team_name              = module.onecx-bookmark-team.team_name
}

# ONECX-BOOKMARK-SVC
module "onecx-bookmark-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-bookmark-svc"
  repository_description = "OneCx Bookmark Management Service"
  team_id                = module.onecx-bookmark-team.team_id
}

# ONECX-BOOKMARK-BFF
module "onecx-bookmark-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-bookmark-bff"
  repository_description = "OneCx Bookmark Management BFF"
  team_id                = module.onecx-bookmark-team.team_id
}

# ONECX-BOOKMARK-UI
module "onecx-bookmark-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-bookmark-ui"
  repository_description = "OneCx Bookmark Management UI"
  team_id                = module.onecx-bookmark-team.team_id
}