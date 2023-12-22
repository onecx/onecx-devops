
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
  team_id                = module.onecx-tenant-team.team_id
  team_name              = module.onecx-tenant-team.team_name
}

# ONECX-TENANT-SVC
module "onecx-tenant-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-tenant-svc"
  repository_description = "OneCx Tenant Management Service"
  team_id                = module.onecx-tenant-team.team_id
}

# ONECX-TENANT-BFF
module "onecx-tenant-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-tenant-bff"
  repository_description = "OneCx Tenant Management BFF"
  team_id                = module.onecx-tenant-team.team_id
}

# ONECX-TENANT-UI
module "onecx-tenant-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-tenant-ui"
  repository_description = "OneCx Tenant Management UI"
  team_id                = module.onecx-tenant-team.team_id
}