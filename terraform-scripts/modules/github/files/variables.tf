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

variable "files" {
  description = "List of repository files"
  type = list(string)
  default = null
}

variable "module" {
  description = "Name of the module. Example: quarkus, product, angular, ... "
  type = string
  default = null
}
