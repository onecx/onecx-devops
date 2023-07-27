module "global" {
  source = "../../modules/global_constants"
}

variable "repository_name" {}

variable "repository_description" {}

variable "team_id" {}

variable "team_permission" {
  default = module.global.team_permission
}

variable "application_ids" {
  default = module.global.applications_sonarcloud_id
}

variable "branch" {
  default = module.global.main_branch
}

variable "check_app_id" {
  default = module.global.applications_sonarcloud_id
}