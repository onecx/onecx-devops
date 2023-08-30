variable "repository_name" {
  description = "name of the repository"
  type = string
  default = null
}

variable "labels" {
  description = "Map of the repository labels name and color"
  type = map(string)
  default = null
}
