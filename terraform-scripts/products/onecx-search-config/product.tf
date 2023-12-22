
# TEAM ONECX-SEARCH-CONFIG
module "onecx-search-config-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-search-config"
  team_description = "OneCx search config services team"
  team_members_file_path   = "products/onecx-search-config/team.csv"
}

# ONECX-SEARCH-CONFIG
module "onecx-search-config" {
  source = "../../modules/product"
  repository_name        = "onecx-search-config"
  repository_description = "OneCx search config"
  team_id                = module.onecx-search-config-team.team_id
  team_name              = module.onecx-search-config-team.team_name
}

# ONECX-SEARCH-CONFIG-SVC
module "onecx-search-config-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-search-config-svc"
  repository_description = "OneCx search config service"
  team_id                = module.onecx-search-config-team.team_id
}
