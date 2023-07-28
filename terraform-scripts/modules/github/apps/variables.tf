variable "repository_name" {
  description = "name of the repository"
  type = string
  default = null
}

variable "application_ids" {
  description = "list of application ids"
  type = list(string)
  default = null
}
