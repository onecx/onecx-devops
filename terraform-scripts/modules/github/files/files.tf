
resource "github_repository_file" "resources" {
  for_each = toset( var.files )
  repository          = var.repository_name
  branch              = var.branch
  file                = each.key
  content             = file(format("modules/%s/%s", var.template, each.key))
  overwrite_on_create = true
}
