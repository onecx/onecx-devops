
# TEAM ONECX-EXAMPLE
module "onecx-example-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-example"
  team_description = "OneCx example services team"
  team_members_file_path   = "products/onecx-example/team.csv"
}

# ONECX-EXAMPLE
module "onecx-example" {
  source = "../../modules/product"
  repository_name        = "onecx-example"
  repository_description = "OneCx example"
  topics                 = ["product", "example"]
  team_id                = module.onecx-example-team.team_id
  team_name              = module.onecx-example-team.team_name
}

# ONECX-EXAMPLE-CUSTOM-AUTH-UI
module "onecx-example-custom-auth-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-example-custom-auth-ui"
  repository_description = "OneCx example custom auth UI"
  topics                 = ["angular", "ui", "example"]
  team_id                = module.onecx-example-team.team_id
}

# ONECX-EXAMPLE-CUSTOM-AUTH-BFF
module "onecx-example-custom-auth-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-example-custom-auth-bff"
  repository_description = "OneCx example custom auth BFF"
  topics                 = ["java", "quarkus", "bff", "example"]
  team_id                = module.onecx-example-team.team_id
}
