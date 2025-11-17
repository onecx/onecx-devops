
# TEAM ONECX-ADMIN
module "onecx-admin-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-admin"
  team_description = "OneCx Admin services team"
  team_members_file_path   = "products/onecx-admin/team.csv"
}

# ONECX-ADMIN
module "onecx-admin" {
  source = "../../modules/product"
  repository_name        = "onecx-admin"
  repository_description = "OneCx Admin"
  homepage_url           = "https://onecx.github.io/docs/onecx-admin/current/general/index.html"
  topics                 = ["product", "admin"]
  team_id                = module.onecx-admin-team.team_id
  team_name              = module.onecx-admin-team.team_name
}

# ONECX-ADMIN-BFF
module "onecx-admin-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-admin-bff"
  repository_description = "OneCx Admin BFF"
  homepage_url           = "https://onecx.github.io/docs/onecx-admin/current/onecx-admin-bff/index.html"
  topics                 = ["java", "quarkus", "bff", "admin"]
  team_id                = module.onecx-admin-team.team_id
}

# ONECX-ADMIN-UI
module "onecx-admin-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-admin-ui"
  repository_description = "OneCx Admin UI"
  topics                 = ["angular", "ui", "admin"]
  team_id                = module.onecx-admin-team.team_id
}