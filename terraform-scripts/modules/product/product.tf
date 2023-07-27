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
resource "github_branch_protection_v3" "main" {
  for_each = toset( [
    "main",
    "fix/*.*.x"
  ] )
  repository = var.repository_name
  branch     = each.key
}

# RESOURCES
resource "github_repository_file" "resources" {
  for_each = toset( [
    ".github/workflows/documentation.yml"
  ] )
  repository          = var.repository_name
  branch              = var.branch
  file                = each.key
  content             = file(format("modules/product/%s", each.key))
  overwrite_on_create = true
}
