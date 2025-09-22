
# TEAM ONECX-HELLO-WORLD
module "onecx-hello-world-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-hello-world"
  team_description = "OneCx Hello World services team"
  team_members_file_path   = "products/onecx-hello-world/team.csv"
}

# ONECX-HELLO-WORLD
module "onecx-hello-world" {
  source = "../../modules/product"
  repository_name        = "onecx-hello-world"
  repository_description = "OneCx Hello World"
  team_id                = module.onecx-hello-world-team.team_id
  team_name              = module.onecx-hello-world-team.team_name
}

# ONECX-HELLO-WORLD-SVC
module "onecx-hello-world-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-hello-world-svc"
  repository_description = "OneCX Hello World SVC"
  team_id                = module.onecx-hello-world-team.team_id
}

# ONECX-HELLO-WORLD-BFF
module "onecx-hello-world-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-hello-world-bff"
  repository_description = "OneCx Hello World BFF"
  team_id                = module.onecx-hello-world-team.team_id
}

# ONECX-HELLO-WORLD-UI
module "onecx-hello-world-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-hello-world-ui"
  repository_description = "OneCX Hello World UI"
  team_id                = module.onecx-hello-world-team.team_id
}