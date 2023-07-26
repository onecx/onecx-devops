resource "github_repository_file" "changelog" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/changelog.yaml"
  content             = file("modules/dependencies/changelog.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "dependabot" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/dependabot.yml"
  content             = file("modules/dependencies/dependabot.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "build" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build.yml"
  content             = file("modules/dependencies/build.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "build_branch" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build-branch.yml"
  content             = file("modules/dependencies/build-branch.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "build_pr" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build-pr.yml"
  content             = file("modules/dependencies/build-pr.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "build_release" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/build-release.yml"
  content             = file("modules/dependencies/build-release.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "create_fix_branch" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/create-fix-branch.yml"
  content             = file("modules/dependencies/create-fix-branch.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "create_release" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/create-release.yml"
  content             = file("modules/dependencies/create-release.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "documentation" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/documentation.yml"
  content             = file("modules/dependencies/documentation.yml")
  overwrite_on_create = true
}

resource "github_repository_file" "sonar_pr" {
  repository          =  var.repository_name
  branch              = "main"
  file                = ".github/workflows/sonar-pr.yml"
  content             = file("modules/dependencies/sonar-pr.yml")
  overwrite_on_create = true
}