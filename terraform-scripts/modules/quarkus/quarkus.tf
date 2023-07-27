
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
  check_app_id = var.check_app_id
  repository_name = var.repository_name
}

# GITHUB REPOSITORY APPS
module "repository-rules" {
  source = "../github/apps"
  application_ids = var.application_ids
  repository_name = var.repository_name
}

# GITHUB REPOSITORY FILES
module "repository-files" {
  source = "../github/files"
  branch = var.branch
  repository_name = var.repository_name
  module = "quarkus"
  files = [
    ".github/changelog.yaml",
    ".github/dependabot.yml",
    ".github/workflows/build-branch.yml",
    ".github/workflows/build-pr.yml",
    ".github/workflows/build-release.yml",
    ".github/workflows/build.yml",
    ".github/workflows/create-fix-branch.yml",
    ".github/workflows/create-release.yml",
    ".github/workflows/documentation.yml",
    ".github/workflows/sonar-pr.yml"
  ]
}







