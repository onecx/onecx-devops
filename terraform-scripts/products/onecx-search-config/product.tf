
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
  homepage_url           = "https://onecx.github.io/docs/onecx-search-config/current/general/index.html"
  topics                 = ["product", "search-config"]
  team_id                = module.onecx-search-config-team.team_id
  team_name              = module.onecx-search-config-team.team_name
}

# ONECX-SEARCH-CONFIG-SVC
module "onecx-search-config-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-search-config-svc"
  repository_description = "OneCx search config service"
  homepage_url           = "https://onecx.github.io/docs/onecx-search-config/current/onecx-search-config-svc/index.html"
  topics                 = ["java", "quarkus", "svc", "search-config"]
  team_id                = module.onecx-search-config-team.team_id
}

# ONECX-SEARCH-CONFIG-BFF
module "onecx-search-config-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-search-config-bff"
  repository_description = "OneCX search config BFF"
  homepage_url           = "https://onecx.github.io/docs/onecx-search-config/current/onecx-search-config-bff/index.html"
  topics                 = ["java", "quarkus", "bff", "search-config"]
  team_id                = module.onecx-search-config-team.team_id
}

# ONECX-SEARCH-CONFIG-UI
module "onecx-search-config-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-search-config-ui"
  repository_description = "OneCX search config UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-search-config/current/onecx-search-config-ui/index.html"
  topics                 = ["angular", "ui", "search-config"]
  team_id                = module.onecx-search-config-team.team_id
}
