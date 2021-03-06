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

variable "environment_type" {
  type        = string
  description = "The type of elastic beanstalk environment to deploy, LoadBalanced or SingleInstance"
}

variable "min_instance_count" {
  type        = number
  description = "The minimum number of instances that should be running at all times"
}

variable "max_instance_count" {
  type        = number
  description = "The maximum number of instances that can be running under peak load"
}

variable "deployment_policy" {
  type        = string
  description = "Choose a deployment policy for application version deployments"
}

variable "rolling_update_type" {
  type        = string
  description = "This includes three types: time-based rolling updates, health-based rolling updates, and immutable updates. Time-based rolling updates apply a PauseTime between batches. Health-based rolling updates wait for new instances to pass health checks before moving on to the next batch. Immutable updates launch a full set of instances in a new Auto Scaling group."
}

variable "default_vpc_id" {
  type        = string
  description = "The id of the default VPC in the region"
}

variable "inbound_ip_addresses" {
  type        = set(string)
  description = "The set of source IP addresses that are allowed to connect"
}

variable "outbound_ip_addresses" {
  type        = set(string)
  description = "The set of IP addresses that can be accessed on outbound connections"
}

variable "ecr_arm64_repo_name" {
  type        = string
  description = "The name of the ECR that stores arm64 images"
}

variable "email_from" {
  type        = string
  description = "Which email address email messages are from"
}

variable "mongo_uri" {
  type        = string
  description = "Connection string used to connect to MongoDB"
}

variable "app_secret" {
  type        = string
  description = "A secret used by the running application"
}

variable "enc_key" {
  type        = string
  description = "A key used to encode / encrypt data"
}

variable "mfa_issuer" {
  type        = string
  description = "The string displayed in Google Authenticator to describe the TOTP"
}

variable "sms_sender_id" {
  type        = string
  description = "The string used to say where SMS messages have come from"
}

variable "wkc_issuer" {
  type        = string
  description = "The well known config issuer url"
}

variable "email_provider" {
  type        = string
  description = "The third party service that sends email messages"
}

variable "ses_aws_region" {
  type        = string
  description = "The AWS region that SES is being used in"
}

variable "ses_aws_identity_arn" {
  type        = string
  description = "The ARN of the identity used to send email messages"
}
