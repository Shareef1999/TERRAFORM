output "region" {
    value = data.aws_region.region.name
}

output "aws_identity" {
  value = data.aws_caller_identity.aws_identity.arn
}