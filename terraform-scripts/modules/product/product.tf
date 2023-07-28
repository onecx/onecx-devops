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
resource "github_branch_protection_v3" "main" {
  for_each = toset( var.rules )
  repository = module.repository.repository_name
  branch     = each.key
}

# GITHUB REPOSITORY FILES
module "repository-files" {
  source = "../github/files"
  branch = var.branch
  repository_name = module.repository.repository_name
  module = "product"
  files = [".github/workflows/documentation.yml"]
}

