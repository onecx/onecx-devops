
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
  homepage_url           = "https://onecx.github.io/docs/onecx-announcement/current/general/index.html"
  topics                 = ["product", "announcement"]
  team_id                = module.onecx-announcement-team.team_id
  team_name              = module.onecx-announcement-team.team_name
}

# ONECX-ANNOUNCEMENT-SVC
module "onecx-announcement-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-announcement-svc"
  repository_description = "OneCx Announcement Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-announcement/current/onecx-announcement-svc/index.html"
  topics                 = ["java", "quarkus", "svc", "announcement"]
  team_id                = module.onecx-announcement-team.team_id
}

# ONECX-ANNOUNCEMENT-BFF
module "onecx-announcement-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-announcement-bff"
  repository_description = "OneCx Announcement BFF"
  homepage_url           = "https://onecx.github.io/docs/onecx-announcement/current/onecx-announcement-bff/index.html"
  topics                 = ["java", "quarkus", "bff", "announcement"]
  team_id                = module.onecx-announcement-team.team_id
}

# ONECX-ANNOUNCEMENT-UI
module "onecx-announcement-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-announcement-ui"
  repository_description = "OneCx Announcement UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-announcement/current/onecx-announcement-bff/index.html"
  topics                 = ["angular", "ui", "announcement"]
  team_id                = module.onecx-announcement-team.team_id
}