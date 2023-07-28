resource "github_repository" "repository" {
  name             = var.repository_name
  description      = var.repository_description
  has_issues       = true
  has_projects     = true
  auto_init        = true
  license_template = var.license_template
}

resource "github_branch_default" "main" {
  repository = github_repository.repository.name
  branch     = var.branch
}

resource "github_team_repository" "team" {
  repository = github_repository.repository.name
  team_id    = var.team_id
  permission = var.team_permission
}
