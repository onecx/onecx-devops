resource "github_repository_file" "build" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build.yml"
  content             = file("modules/quarkus/build.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "build_branch" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build-branch.yml"
  content             = file("modules/quarkus/build-branch.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "build_pr" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build-pr.yml"
  content             = file("modules/quarkus/build-pr.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "build_release" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build-release.yml"
  content             = file("modules/quarkus/build-release.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "quarkus_build" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/quarkus-build.yml"
  content             = file("modules/quarkus/quarkus-build.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "quarkus_codeql" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/quarkus-codeql.yml"
  content             = file("modules/quarkus/quarkus-codeql.yml")
  overwrite_on_create = true
}
resource "github_repository_file" "quarkus_pr_sonar" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/quarkus-pr-sonar.yml"
  content             = file("modules/quarkus/quarkus-pr-sonar.yml")
  overwrite_on_create = true
}
resource "github_repository_file" "quarkus_sonar" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/quarkus-sonar.yml"
  content             = file("modules/quarkus/quarkus-sonar.yml")
  overwrite_on_create = true
}