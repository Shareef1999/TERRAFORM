output "arn" { #amazon resource name
  value = aws_ecr_repository.myRepo.arn
  description = "full arn of repo"
}

output "registry_id" {
  value = aws_ecr_repository.myRepo.registry_id
}

output "repository_url" {
  value = aws_ecr_repository.myRepo.repository_url
}