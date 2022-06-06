data "aws_elastic_beanstalk_solution_stack" "stack" {
  most_recent = true
  name_regex  = "^64bit Amazon Linux 2 (.*) running Docker$"
}

resource "aws_elastic_beanstalk_environment" "web_server_prod" {
  application = aws_elastic_beanstalk_application.gatekeeper.id
  name        = var.web_server_prod_name

  solution_stack_name = data.aws_elastic_beanstalk_solution_stack.stack.name

  tier = "WebServer"
}
