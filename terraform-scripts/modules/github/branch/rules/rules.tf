
resource "github_branch_protection_v3" "main" {

  for_each = toset( var.branches )
  repository = var.repository_name
  branch     = each.key

  required_status_checks {
    strict   = true
    checks = [
      format("%s:%s", var.sonar_context, var.sonar_app_id)
    ]
  }
}

resource "github_branch_protection" "patterns" {
  for_each = toset( var.patterns )
  repository_id = var.repository_name
  pattern = each.key

  required_status_checks {
    strict   = true
    contexts = [
      var.sonar_context
    ]
  }
}