variable "organisation" {}

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
