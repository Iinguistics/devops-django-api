##############################################
# Create ECR repos for storing Docker images #
##############################################

resource "aws_ecr_repository" "app" {
  name                 = "django-api-app"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "proxy" {
  name                 = "django-api-proxy"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}
