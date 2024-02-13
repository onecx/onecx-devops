variable "organisation" {
  description = "sonar-cloud organization"
  type = string
  default = "onecx-apps"
}

variable "repository_name" {
  description = "name of the repository"
  type = string
  default = null
}

variable "branch" {
  description = "Repository default branch"
  type = string
  default = "main"
}
