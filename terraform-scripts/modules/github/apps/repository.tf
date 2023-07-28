
resource "github_app_installation_repository" "app_installation_repository" {
  for_each        = {for app in var.application_ids : app => app}
  repository      = var.repository_name
  installation_id = each.value
}