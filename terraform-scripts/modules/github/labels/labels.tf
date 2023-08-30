
resource "github_issue_label" "labels" {
  for_each = var.labels

  repository          = var.repository_name
  name                = each.key
  color               = each.value
}
