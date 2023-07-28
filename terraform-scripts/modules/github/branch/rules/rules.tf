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