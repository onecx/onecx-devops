
# repository
resource "github_repository" "repository" {
  name             = var.repository_name
  description      = var.repository_description
  has_issues       = true
  has_projects     = true
  auto_init        = true
  license_template = "apache-2.0"
}

resource "github_branch_default" "main" {
  repository = github_repository.repository.name
  branch     = "main"
}

resource "github_branch_protection_v3" "main" {
  repository = github_repository.repository.name
  branch     = "main"
}

resource "github_branch_protection" "fix" {
  repository_id = github_repository.repository.id
  pattern       = "fix/*.*.x"
}

resource "github_team_repository" "team" {
  repository = github_repository.repository.name
  team_id    = var.team_id
  permission = var.team_permission
}

resource "github_app_installation_repository" "app_installation_repository" {
  for_each        = {for app in [var.application_ids] : app => app}
  repository      = github_repository.repository.name
  installation_id = each.value
}

# .github/workflows
resource "github_repository_file" "documentation" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/documentation.yml"
  content             = file("modules/product/.github/workflows/documentation.yml")
  overwrite_on_create = true
}





