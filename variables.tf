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

variable "custom_domain" {
  type        = string
  description = "The custom domain for the web server environment"
}

variable "valid_azs" {
  type        = string
  description = "The AWS availability zones the app servers should run in"
}

variable "instance_types" {
  type        = list(string)
  description = "The EC2 instance types used by the app servers"
}
