
# TEAM ONECX-PERMISSION
module "onecx-permission-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-permission"
  team_description = "OneCx permission services team"
  team_members_file_path   = "products/onecx-permission/team.csv"
}

# ONECX-PERMISSION
module "onecx-permission" {
  source = "../../modules/product"
  repository_name        = "onecx-permission"
  repository_description = "OneCx permission"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/general/index.html"
  topics                 = ["product", "permission"]
  team_id                = module.onecx-permission-team.team_id
  team_name              = module.onecx-permission-team.team_name
}

# ONECX-PERMISSION-SVC
module "onecx-permission-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-permission-svc"
  repository_description = "OneCx permission service"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/onecx-permission-svc/index.html"
  topics                 = ["java", "quarkus", "svc", "permission"]
  team_id                = module.onecx-permission-team.team_id
}

# ONECX-PERMISSION-BFF
module "onecx-permission-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-permission-bff"
  repository_description = "OneCx permission BFF"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/onecx-permission-bff/index.html"
  topics                 = ["java", "quarkus", "bff", "permission"]
  team_id                = module.onecx-permission-team.team_id
}

# ONECX-PERMISSION-UI
module "onecx-permission-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-permission-ui"
  repository_description = "OneCx permission UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/onecx-permission-ui/index.html"
  topics                 = ["angular", "ui", "permission"]
  team_id                = module.onecx-permission-team.team_id
}

# ONECX-PERMISSION-OPERATOR
module "onecx-permission-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-permission-operator"
  repository_description = "OneCx permission k8s operator"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/onecx-permission-operator/index.html"
  topics                 = ["java", "quarkus", "operator", "permission"]
  team_id                = module.onecx-permission-team.team_id
}

