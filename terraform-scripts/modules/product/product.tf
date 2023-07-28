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
resource "github_branch_protection" "patterns" {
  for_each = toset( var.patterns )
  repository_id = var.repository_name
  pattern = each.key

  require_conversation_resolution = true

  required_pull_request_reviews {
    required_approving_review_count = 1
  }
}

# GITHUB REPOSITORY FILES
module "repository-files" {
  source = "../github/files"
  branch = var.branch
  repository_name = module.repository.repository_name
  module = "product"
  files = [".github/workflows/documentation.yml"]
}

