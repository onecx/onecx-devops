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

  require_conversation_resolution = true

  required_pull_request_reviews {
    required_approving_review_count = 1
    pull_request_bypassers = [
      "/tkit-dev"
    ]
    require_last_push_approval = true
  }
}