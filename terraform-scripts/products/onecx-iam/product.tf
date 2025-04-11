
# TEAM ONECX-IAM
module "onecx-iam-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-iam"
  team_description = "OneCx iam services team"
  team_members_file_path   = "products/onecx-iam/team.csv"
}

# ONECX-IAM
module "onecx-iam" {
  source = "../../modules/product"
  repository_name        = "onecx-iam"
  repository_description = "OneCX Identity Access Management Product"
  team_id                = module.onecx-iam-team.team_id
  team_name              = module.onecx-iam-team.team_name
}

# ONECX-IAM-KC-SVC
module "onecx-iam-kc-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-iam-kc-svc"
  repository_description = "OneCX Identity Access Management Keycloak Service"
  team_id                = module.onecx-iam-team.team_id
}

# ONECX-IAM-KC-CLIENT-OPERATOR
module "onecx-iam-kc-client-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-iam-kc-client-operator"
  repository_description = "OneCx iam keycloak client operator"
  team_id                = module.onecx-iam-team.team_id
}

# ONECX-IAM-BFF
module "onecx-iam-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-iam-bff"
  repository_description = "OneCX Identity Access Management BFF"
  team_id                = module.onecx-iam-team.team_id
}

# ONECX-IAM-UI
module "onecx-iam-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-iam-ui"
  repository_description = "OneCX Identity Access Management UI"
  team_id                = module.onecx-iam-team.team_id
}

# ONECX-IAM-SVC
module "onecx-iam-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-iam-svc"
  repository_description = "OneCX Identity Access Management Service"
  team_id                = module.onecx-iam-team.team_id
}