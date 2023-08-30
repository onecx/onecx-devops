module "global" {
  source = "../../modules/global_constants"
}

# GITHUB REPOSITORY
module "repository" {
  source = "../github/repository"
  repository_name        = var.repository_name
  repository_description = var.repository_description
  team_permission        = var.team_permission
  team_id                = var.team_id
  branch                 = var.branch
}

# GITHUB REPOSITORY RULES
module "repository-rules" {
  source = "../github/branch/rules"
  sonar_app_id = module.global.sonarcloud_id
  repository_name = module.repository.repository_name
}

# SONARCLOUD
module "sonarcloud" {
  source = "../sonarcloud"
  repository_name = module.repository.repository_name
  branch = var.branch
  organisation = module.global.organisation
}






