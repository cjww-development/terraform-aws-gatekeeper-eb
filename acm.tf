data "aws_acm_certificate" "gk_cert" {
  domain      = var.custom_domain
  statuses    = ["ISSUED"]
  most_recent = true
}
