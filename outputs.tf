output "eb_application_name" {
  value = aws_elastic_beanstalk_application.gatekeeper.name
}

output "eb_application_arn" {
  value = aws_elastic_beanstalk_application.gatekeeper.arn
}

output "eb_prod_env_name" {
  value = aws_elastic_beanstalk_environment.web_server_prod.name
}

output "eb_prod_env_arn" {
  value = aws_elastic_beanstalk_environment.web_server_prod.arn
}

output "eb_prod_env_endpoint" {
  value = aws_elastic_beanstalk_environment.web_server_prod.endpoint_url
}

output "eb_prod_env_cname" {
  value = aws_elastic_beanstalk_environment.web_server_prod.cname
}
