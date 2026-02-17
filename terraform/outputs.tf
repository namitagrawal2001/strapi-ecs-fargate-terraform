output "ecr_repo_url" {
  value = aws_ecr_repository.repo.repository_url
}

output "cluster_name" {
  value = aws_ecs_cluster.cluster.name
}
