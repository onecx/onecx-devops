
resource "github_repository_topics" "topics" {
  repository          = var.repository_name
  topics              = var.topics
}
