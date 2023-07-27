variable "repository_name" {}

variable "repository_description" {}

variable "team_id" {}

variable "team_permission" {
  default = "maintain"
}

variable "branch" {
  default = "main"
}