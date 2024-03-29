
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
  team_id                = module.onecx-user-profile-team.team_id
  team_name              = module.onecx-user-profile-team.team_name
}

# ONECX-USER-PROFILE-SVC
module "onecx-user-profile-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-user-profile-svc"
  repository_description = "OneCx user-profile service"
  team_id                = module.onecx-user-profile-team.team_id
}

# ONECX-USER-PROFILE-AVATAR-SVC
module "onecx-user-profile-avatar-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-user-profile-avatar-svc"
  repository_description = "OneCx user-profile avatar service"
  team_id                = module.onecx-user-profile-team.team_id
}

# ONECX-USER-PROFILE-BFF
module "onecx-user-profile-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-user-profile-bff"
  repository_description = "OneCx user-profile BFF"
  team_id                = module.onecx-user-profile-team.team_id
}

# ONECX-USER-PROFILE-UI
module "onecx-user-profile-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-user-profile-ui"
  repository_description = "OneCx user-profile UI"
  team_id                = module.onecx-user-profile-team.team_id
}
