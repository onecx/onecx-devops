resource "github_repository_file" "sonar_project_properties" {
  repository = var.repository_name
  branch     = "main"
  file       = "sonar-project.properties"
  content    = replace(replace(file("modules/sonarcloud/sonar_project_properties.txt"), "$${local.organisation}", var.organisation),
    "$${github_repository.repository.name}",  var.repository_name)
  overwrite_on_create = true
}

resource "github_repository_file" "workflow_build" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/sonarcloud-workflow-build.yml"
  content             = file("modules/sonarcloud/sonarcloud-workflow-build.yml")
  overwrite_on_create = true
}

resource "sonarcloud_project" "project" {
  key        = "${var.organisation}_${var.repository_name}"
  name       = var.repository_name
  visibility = "public"
}

resource "sonarcloud_project_main_branch" "main" {
  project_key = sonarcloud_project.project.key
  name        = "main"
}