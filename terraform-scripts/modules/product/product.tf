# GITHUB REPOSITORY
module "repository" {
  source = "../github/repository"
  repository_name        = var.repository_name
  repository_description = var.repository_description
  team_permission        = var.team_permission
  team_id                = var.team_id
  branch                 = var.branch
}

# GITHUB REPOSITORY BRANCHES/PATTERNS
resource "github_branch_protection_v3" "main" {
  for_each = toset( var.branches )
  repository = module.repository.repository_name
  branch     = each.key
}
resource "github_branch_protection" "patterns" {
  for_each = toset( var.patterns )
  repository_id = var.repository_name
  pattern = each.key
}

# GITHUB REPOSITORY FILES
module "repository-files" {
  source = "../github/files"
  branch = var.branch
  repository_name = module.repository.repository_name
  module = "product"
  files = [".github/workflows/documentation.yml"]
}

