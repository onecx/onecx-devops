
# TEAM ONECX-USER-PROFILE
module "onecx-user-profile-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-user-profile"
  team_description = "OneCx user-profile services team"
  team_members_file_path   = "products/onecx-user-profile/team.csv"
}

# ONECX-USER-PROFILE
module "onecx-user-profile" {
  source = "../../modules/product"
  repository_name        = "onecx-user-profile"
  repository_description = "OneCx user-profile"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/general/index.html"
  topics                 = ["product", "user-profile"]
  team_id                = module.onecx-user-profile-team.team_id
  team_name              = module.onecx-user-profile-team.team_name
}

# ONECX-USER-PROFILE-SVC
module "onecx-user-profile-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-user-profile-svc"
  repository_description = "OneCx user-profile service"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/onecx-user-profile-svc/index.html"
  topics                 = ["java", "quarkus", "svc", "user-profile"]
  team_id                = module.onecx-user-profile-team.team_id
}

# ONECX-USER-PROFILE-AVATAR-SVC
module "onecx-user-profile-avatar-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-user-profile-avatar-svc"
  repository_description = "OneCx user-profile avatar service"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/onecx-user-profile-avatar-svc/index.html"
  topics                 = ["java", "quarkus", "svc", "user-profile"]
  team_id                = module.onecx-user-profile-team.team_id
}

# ONECX-USER-PROFILE-BFF
module "onecx-user-profile-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-user-profile-bff"
  repository_description = "OneCx user-profile BFF"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/onecx-user-profile-bff/index.html"
  topics                 = ["java", "quarkus", "bff", "user-profile"]
  team_id                = module.onecx-user-profile-team.team_id
}

# ONECX-USER-PROFILE-UI
module "onecx-user-profile-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-user-profile-ui"
  repository_description = "OneCx user-profile UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/onecx-user-profile-ui/index.html"
  topics                 = ["angular", "ui", "user-profile"]
  team_id                = module.onecx-user-profile-team.team_id
}
