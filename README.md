[![Apache-2.0 license](http://img.shields.io/badge/license-Apache-brightgreen.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

terraform-aws-gatekeeper-eb
==================

This repository is used to create the elastic beanstalk infrastructure for the Gatekeeper OIDC/OAuth2 service.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=4.17.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=4.17.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository.gatekeeper_arm64](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_elastic_beanstalk_application.gatekeeper](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_application) | resource |
| [aws_elastic_beanstalk_environment.web_server_prod](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_environment) | resource |
| [aws_iam_instance_profile.aws_eb_ec2_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.aws_eb_ec2_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ecr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group.ip_block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_acm_certificate.gk_cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/acm_certificate) | data source |
| [aws_elastic_beanstalk_solution_stack.stack](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/elastic_beanstalk_solution_stack) | data source |
| [aws_iam_policy.amazon_ec2_container_registry_readonly](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_subnets.default_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_vpc.default_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_secret"></a> [app\_secret](#input\_app\_secret) | A secret used by the running application | `string` | n/a | yes |
| <a name="input_custom_domain"></a> [custom\_domain](#input\_custom\_domain) | The custom domain for the web server environment | `string` | n/a | yes |
| <a name="input_default_vpc_id"></a> [default\_vpc\_id](#input\_default\_vpc\_id) | The id of the default VPC in the region | `string` | n/a | yes |
| <a name="input_deployment_policy"></a> [deployment\_policy](#input\_deployment\_policy) | Choose a deployment policy for application version deployments | `string` | n/a | yes |
| <a name="input_ecr_arm64_repo_name"></a> [ecr\_arm64\_repo\_name](#input\_ecr\_arm64\_repo\_name) | The name of the ECR that stores arm64 images | `string` | n/a | yes |
| <a name="input_elastic_beanstalk_app_name"></a> [elastic\_beanstalk\_app\_name](#input\_elastic\_beanstalk\_app\_name) | The name of the elastic beanstalk application | `string` | n/a | yes |
| <a name="input_email_from"></a> [email\_from](#input\_email\_from) | Which email address email messages are from | `string` | n/a | yes |
| <a name="input_email_provider"></a> [email\_provider](#input\_email\_provider) | The third party service that sends email messages | `string` | n/a | yes |
| <a name="input_enc_key"></a> [enc\_key](#input\_enc\_key) | A key used to encode / encrypt data | `string` | n/a | yes |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | The type of elastic beanstalk environment to deploy, LoadBalanced or SingleInstance | `string` | n/a | yes |
| <a name="input_inbound_ip_addresses"></a> [inbound\_ip\_addresses](#input\_inbound\_ip\_addresses) | The set of source IP addresses that are allowed to connect | `set(string)` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | The EC2 instance types used by the app servers | `list(string)` | n/a | yes |
| <a name="input_max_instance_count"></a> [max\_instance\_count](#input\_max\_instance\_count) | The maximum number of instances that can be running under peak load | `number` | n/a | yes |
| <a name="input_mfa_issuer"></a> [mfa\_issuer](#input\_mfa\_issuer) | The string displayed in Google Authenticator to describe the TOTP | `string` | n/a | yes |
| <a name="input_min_instance_count"></a> [min\_instance\_count](#input\_min\_instance\_count) | The minimum number of instances that should be running at all times | `number` | n/a | yes |
| <a name="input_mongo_uri"></a> [mongo\_uri](#input\_mongo\_uri) | Connection string used to connect to MongoDB | `string` | n/a | yes |
| <a name="input_outbound_ip_addresses"></a> [outbound\_ip\_addresses](#input\_outbound\_ip\_addresses) | The set of IP addresses that can be accessed on outbound connections | `set(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The AWS region the IaC will be deployed into | `string` | n/a | yes |
| <a name="input_rolling_update_type"></a> [rolling\_update\_type](#input\_rolling\_update\_type) | This includes three types: time-based rolling updates, health-based rolling updates, and immutable updates. Time-based rolling updates apply a PauseTime between batches. Health-based rolling updates wait for new instances to pass health checks before moving on to the next batch. Immutable updates launch a full set of instances in a new Auto Scaling group. | `string` | n/a | yes |
| <a name="input_ses_aws_identity_arn"></a> [ses\_aws\_identity\_arn](#input\_ses\_aws\_identity\_arn) | The ARN of the identity used to send email messages | `string` | n/a | yes |
| <a name="input_ses_aws_region"></a> [ses\_aws\_region](#input\_ses\_aws\_region) | The AWS region that SES is being used in | `string` | n/a | yes |
| <a name="input_sms_sender_id"></a> [sms\_sender\_id](#input\_sms\_sender\_id) | The string used to say where SMS messages have come from | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags associated with all deployed IaC resources | `map(string)` | n/a | yes |
| <a name="input_valid_azs"></a> [valid\_azs](#input\_valid\_azs) | The AWS availability zones the app servers should run in | `string` | n/a | yes |
| <a name="input_web_server_prod_name"></a> [web\_server\_prod\_name](#input\_web\_server\_prod\_name) | Name of web server prod environment | `string` | n/a | yes |
| <a name="input_wkc_issuer"></a> [wkc\_issuer](#input\_wkc\_issuer) | The well known config issuer url | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eb_application_arn"></a> [eb\_application\_arn](#output\_eb\_application\_arn) | n/a |
| <a name="output_eb_application_name"></a> [eb\_application\_name](#output\_eb\_application\_name) | n/a |
| <a name="output_eb_prod_env_arn"></a> [eb\_prod\_env\_arn](#output\_eb\_prod\_env\_arn) | n/a |
| <a name="output_eb_prod_env_cname"></a> [eb\_prod\_env\_cname](#output\_eb\_prod\_env\_cname) | n/a |
| <a name="output_eb_prod_env_endpoint"></a> [eb\_prod\_env\_endpoint](#output\_eb\_prod\_env\_endpoint) | n/a |
| <a name="output_eb_prod_env_name"></a> [eb\_prod\_env\_name](#output\_eb\_prod\_env\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

License
=======
This code is open sourced licensed under the Apache 2.0 License
