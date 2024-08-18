##############################################
# Create ECR repos for storing Docker Images #
##############################################

resource "aws_ecr_repository" "app" {
  name                 = "recipe-app-api-app"
  image_tag_mutability = "MUTABLE"
  # Beware of forcing delete on prod.
  force_delete = true

  image_scanning_configuration {
    # NOTE: update to true for real deployments.
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "proxy" {
  name                 = "recipe-app-api-proxy"
  image_tag_mutability = "MUTABLE"
  # Beware of forcing delete on prod.
  force_delete = true

  image_scanning_configuration {
    # NOTE: update to true for real deployments.
    scan_on_push = false
  }
}
