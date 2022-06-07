data "aws_elastic_beanstalk_solution_stack" "stack" {
  most_recent = true
  name_regex  = "^64bit Amazon Linux 2 (.*) running Docker$"
}

resource "aws_elastic_beanstalk_environment" "web_server_prod" {
  application = aws_elastic_beanstalk_application.gatekeeper.id
  name        = var.web_server_prod_name

  solution_stack_name = data.aws_elastic_beanstalk_solution_stack.stack.name

  tier = "WebServer"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = aws_iam_instance_profile.aws_eb_ec2_instance_profile.name
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "Availability Zones"
    value     = var.valid_azs
  }


  setting {
    namespace = "aws:ec2:instances"
    name      = "InstanceTypes"
    value     = join(",", var.instance_types)
  }

  setting {
    namespace = "aws:elb:listener:443"
    name      = "ListenerProtocol"
    value     = "HTTPS"
  }

  setting {
    namespace = "aws:elb:listener:443"
    name      = "InstancePort"
    value     = 80
  }

  setting {
    namespace = "aws:elb:listener:443"
    name      = "InstanceProtocol"
    value     = "HTTP"
  }

  setting {
    namespace = "aws:elb:listener:443"
    name      = "SSLCertificateId"
    value     = data.aws_acm_certificate.gk_cert.arn
  }

  setting {
    namespace = "aws:elb:listener:443"
    name      = "ListenerEnabled"
    value     = true
  }

  setting {
    namespace = "aws:elb:listener:80"
    name      = "ListenerEnabled"
    value     = false
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = var.environment_type
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = var.min_instance_count
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = var.max_instance_count
  }
}
