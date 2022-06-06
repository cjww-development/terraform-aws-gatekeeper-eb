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
| [aws_elastic_beanstalk_application.gatekeeper](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_application) | resource |
| [aws_elastic_beanstalk_environment.web_server_prod](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_environment) | resource |
| [aws_iam_instance_profile.aws_eb_ec2_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.aws_eb_ec2_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_elastic_beanstalk_solution_stack.stack](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/elastic_beanstalk_solution_stack) | data source |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_elastic_beanstalk_app_name"></a> [elastic\_beanstalk\_app\_name](#input\_elastic\_beanstalk\_app\_name) | The name of the elastic beanstalk application | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The AWS region the IaC will be deployed into | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags associated with all deployed IaC resources | `map(string)` | n/a | yes |
| <a name="input_web_server_prod_name"></a> [web\_server\_prod\_name](#input\_web\_server\_prod\_name) | Name of web server prod environment | `string` | n/a | yes |

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
