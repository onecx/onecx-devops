
# TEAM ONECX-TENANT
module "onecx-tenant-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-tenant"
  team_description = "OneCx Tenant management services team"
  team_members_file_path   = "products/onecx-tenant/team.csv"
}

# ONECX-TENANT
module "onecx-tenant" {
  source = "../../modules/product"
  repository_name        = "onecx-tenant"
  repository_description = "OneCx Tenant Management"
  homepage_url           = "https://onecx.github.io/docs/onecx-tenant/current/general/index.html"
  topics                 = ["product", "tenant"]
  team_id                = module.onecx-tenant-team.team_id
  team_name              = module.onecx-tenant-team.team_name
}

# ONECX-TENANT-SVC
module "onecx-tenant-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-tenant-svc"
  repository_description = "OneCx Tenant Management Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-tenant/current/onecx-tenant-svc/index.html"
  topics                 = ["java", "quarkus", "svc", "tenant"]
  team_id                = module.onecx-tenant-team.team_id
}

# ONECX-TENANT-BFF
module "onecx-tenant-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-tenant-bff"
  repository_description = "OneCx Tenant Management BFF"
  homepage_url           = "https://onecx.github.io/docs/onecx-tenant/current/onecx-tenant-bff/index.html"
  topics                 = ["java", "quarkus", "bff", "tenant"]
  team_id                = module.onecx-tenant-team.team_id
}

# ONECX-TENANT-UI
module "onecx-tenant-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-tenant-ui"
  repository_description = "OneCx Tenant Management UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-tenant/current/onecx-tenant-ui/index.html"
  topics                 = ["angular", "ui", "tenant"]
  team_id                = module.onecx-tenant-team.team_id
}