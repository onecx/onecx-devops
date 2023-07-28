variable "repository_name" {
  description = "name of the repository"
  type = string
  default = null
}

variable "sonar_app_id" {
  description = "Sonar application ID"
  type = string
  default = null
}

variable "rules" {
  description = "List of branch rules to apply"
  type = list(string)
  default = [
    "main",
    "fix/*.*.x"
  ]
}