variable "region" {
  type        = string
  description = "The AWS region the IaC will be deployed into"
}

variable "elastic_beanstalk_app_name" {
  type        = string
  description = "The name of the elastic beanstalk application"
}

variable "web_server_prod_name" {
  type        = string
  description = "Name of web server prod environment"
}

variable "tags" {
  type        = map(string)
  description = "Tags associated with all deployed IaC resources"
}
