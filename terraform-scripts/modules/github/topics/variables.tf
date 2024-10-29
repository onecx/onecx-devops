variable "repository_name" {
  description = "name of the repository"
  type = string
  default = null
}

variable "topics" {
  description = "List of repository topics"
  type = list(string)
  default = null
}
