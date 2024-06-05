
# TEAM ONECX-DEVELOP
module "onecx-develop" {
  source = "../../modules/github/team"
  team_name        = "onecx-develop"
  team_description = "onecx-develop"
  team_members_file_path   = "products/onecx-develop/team.csv"
}

# ONECX-DEVELOP
module "onecx-develop-product" {
  source = "../../modules/product"
  repository_name        = "onecx-develop"
  repository_description = "OneCx develop Management"
  team_id                = module.onecx-develop.team_id
  team_name              = module.onecx-develop.team_name
}
