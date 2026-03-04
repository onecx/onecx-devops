
# TEAM ONECX-FILE-STORAGE
module "onecx-file-storage-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-file-storage"
  team_description = "OneCX file-storage services team"
  team_members_file_path   = "products/onecx-file-storage/team.csv"
}

# ONECX-FILE-STORAGE
module "onecx-file-storage" {
  source = "../../modules/product"
  repository_name        = "onecx-file-storage"
  repository_description = "OneCX File Storage"
  homepage_url           = "https://onecx.github.io/docs/onecx-file-storage/current/general"
  topics                 = ["product", "file-storage", "s3"]
  team_id                = module.onecx-file-storage-team.team_id
  team_name              = module.onecx-file-storage-team.team_name
}

# ONECX-FILE-STORAGE-SVC
module "onecx-file-storage-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-file-storage-svc"
  repository_description = "OneCX File Storage Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-file-storage/current/onecx-file-storage-svc"
  topics                 = ["java", "quarkus", "svc", "file-storage", "s3"]
  team_id                = module.onecx-file-storage-team.team_id
}