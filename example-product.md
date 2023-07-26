# Product template

Add *mandatory* `global` module to have access on global variables such as `organisation`. 
```
module "global" {
  source = "../../modules/global_constants"
}
```

Add `repository` and use:
- `your_repository_name` for repository name
- `your_repository_description` for repository description
- `team_permission` set permission for team to `pull, triage, push, maintain or admin`

```
module "repository" {
  source = "../../modules/repository"

  repository_name        = "your_repository_name"
  repository_description = "your_repository_description"
  team_permission        = "maintain"
  team_id                = module.team.team_id
  application_ids        = module.global.applications_sonarcloud_id
}
```

Add `team` and use:
- `your_team_name` for team name
- `your_team_description` for team description
- set `team_file_path` to your team file location, please add it inside your product folder
- your team file is a csv file with `username,role` header. Add `username,role` per line per team member 
Possible roles are `maintainer` or `member` 
```
module "team" {
  source = "../../modules/team"

  team_name        = "your_team_name"
  team_description = "your_team_description"
  team_file_path   = "products/your_folder_name/team.csv"
  repository_name  = module.repository.repository_name
  repository_id    = module.repository.repository_id
}
```

Add `quarkus` module to get GitHub workflow files for quarkus applications:
```
module "quarkus" {
  source = "../../modules/quarkus"

  repository_name = module.repository.repository_name
}
```