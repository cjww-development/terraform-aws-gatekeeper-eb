resource "aws_elastic_beanstalk_application" "gatekeeper" {
  name = var.elastic_beanstalk_app_name
  tags = var.tags
}
