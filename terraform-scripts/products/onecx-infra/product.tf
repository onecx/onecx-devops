
# TEAM ONECX-INFRA
module "onecx-infra" {
  source = "../../modules/github/team"
  team_name        = "onecx-infra"
  team_description = "onecx-infra"
  team_members_file_path   = "products/onecx-infra/team.csv"
}

# ONECX-INFRA
module "onecx-infra-product" {
  source = "../../modules/product"
  repository_name        = "onecx-infra"
  repository_description = "OneCx Infra"
  team_id                = module.onecx-infra.team_id
  team_name              = module.onecx-infra.team_name
}
