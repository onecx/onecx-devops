resource "github_repository_file" "changelog" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/changelog.yaml"
  content             = file("modules/quarkus/changelog.txt")
  overwrite_on_create = true
}

resource "github_repository_file" "dependabot" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/dependabot.yml"
  content             = file("modules/quarkus/dependabot.txt")
  overwrite_on_create = true
}

resource "github_repository_file" "build" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build.yml"
  content             = file("modules/quarkus/build.txt")
  overwrite_on_create = true
}

resource "github_repository_file" "build_branch" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build-branch.yml"
  content             = file("modules/quarkus/build-branch.txt")
  overwrite_on_create = true
}

resource "github_repository_file" "build_pr" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build-pr.yml"
  content             = file("modules/quarkus/build-pr.txt")
  overwrite_on_create = true
}

resource "github_repository_file" "build_release" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build-release.yml"
  content             = file("modules/quarkus/build-release.txt")
  overwrite_on_create = true
}

resource "github_repository_file" "create_fix_branch" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/create-fix-branch.yml"
  content             = file("modules/quarkus/create-fix-branch.txt")
  overwrite_on_create = true
}

resource "github_repository_file" "create_release" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/create-release.yml"
  content             = file("modules/quarkus/create-release.txt")
  overwrite_on_create = true
}

resource "github_repository_file" "documentation" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/documentation.yml"
  content             = file("modules/quarkus/documentation.txt")
  overwrite_on_create = true
}

resource "github_repository_file" "sonar_pr" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/sonar-pr.yml"
  content             = file("modules/quarkus/sonar-pr.txt")
  overwrite_on_create = true
}