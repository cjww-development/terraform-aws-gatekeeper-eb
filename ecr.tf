resource "aws_ecr_repository" "gatekeeper_arm64" {
  #checkov:skip=CKV_AWS_136:Default enc is acceptable
  name = var.ecr_arm64_repo_name

  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }
}
