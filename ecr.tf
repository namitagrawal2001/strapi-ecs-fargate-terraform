resource "aws_ecr_repository" "repo" {
  name = "strapi-ecs"

  image_scanning_configuration {
    scan_on_push = true
  }
}
