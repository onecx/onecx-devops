
# GITHUB REPOSITORY
module "repository" {
  source = "../../modules/repository"
  repository_name        = var.repository_name
  repository_description = var.repository_description
  team_permission        = var.team_permission
  team_id                = var.team_id
  application_ids        = var.application_ids
  branch                 = var.branch
}

# GITHUB REPOSITORY RULES
module "repository-rules" {
  source = "../../modules/branch/rules"
  check_app_id = var.check_app_id
  repository_name = var.repository_name
}

# RESOURCES
resource "github_repository_file" "resources" {
  for_each = toset( [
    ".github/changelog.yaml",
    ".github/dependabot.yaml",
    ".github/workflows/build-branch.yml",
    ".github/workflows/build-pr.yml",
    ".github/workflows/build-release.yml",
    ".github/workflows/build.yml",
    ".github/workflows/create-fix-branch.yml",
    ".github/workflows/create-release.yml",
    ".github/workflows/documentation.yml",
    ".github/workflows/sonar-pr.yml"
  ] )
  repository          = var.repository_name
  branch              = var.branch
  file                = each.key
  content             = file(format("modules/angular/%s", each.key))
  overwrite_on_create = true
}
