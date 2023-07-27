
# .github/workflows
resource "github_repository_file" "documentation" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/documentation.yml"
  content             = file("modules/product/.github/workflows/documentation.yml")
  overwrite_on_create = true
}





