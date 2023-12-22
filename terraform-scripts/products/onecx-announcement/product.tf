
# TEAM ONECX-ANNOUNCEMENT
module "onecx-announcement-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-announcement"
  team_description = "OneCx Announcement services team"
  team_members_file_path   = "products/onecx-announcement/team.csv"
}

# ONECX-ANNOUNCEMENT
module "onecx-announcement" {
  source = "../../modules/product"
  repository_name        = "onecx-announcement"
  repository_description = "OneCx Announcement"
  team_id                = module.onecx-announcement-team.team_id
  team_name              = module.onecx-announcement-team.team_name
}

# ONECX-ANNOUNCEMENT-SVC
module "onecx-announcement-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-announcement-svc"
  repository_description = "OneCx Announcement Service"
  team_id                = module.onecx-announcement-team.team_id
}

# ONECX-ANNOUNCEMENT-BFF
module "onecx-announcement-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-announcement-bff"
  repository_description = "OneCx Announcement BFF"
  team_id                = module.onecx-announcement-team.team_id
}

# ONECX-ANNOUNCEMENT-UI
module "onecx-announcement-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-announcement-ui"
  repository_description = "OneCx Announcement UI"
  team_id                = module.onecx-announcement-team.team_id
}