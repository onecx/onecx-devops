variable "repository_name" {}

variable "repository_description" {}

variable "team_id" {}

variable "team_permission" {
  default = "maintain"
}

variable "application_ids" {}

variable "branch" {
  default = "main"
}

variable "check_app_id" {}