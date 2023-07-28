
resource "github_branch_protection_v3" "main" {

  for_each = toset( var.rules )
  repository = var.repository_name
  branch     = each.key

  required_status_checks {
    strict   = true
    checks = [
      format("ci/check:%s", var.sonar_app_id)
    ]
  }
}
