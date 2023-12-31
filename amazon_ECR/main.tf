resource "aws_ecr_repository" "myRepo" {
    name = "${var.account_profile}-${var.name}"
    image_tag_mutability = var.image_tag_mutability

    encryption_configuration {
      encryption_type = var.encryption_type
      kms_key = var.kms_key
    }

    image_scanning_configuration {
      scan_on_push = var.scan_on_push
    }

    tags = merge(var.tags, {"Name" : "${var.account_profile}-${var.name}"})
  
}