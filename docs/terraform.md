## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | List of attributes to add to label. | list(string) | `<list>` | no |
| create_sns_topic | Whether to create new SNS topic | bool | `true` | no |
| delimiter | The delimiter to be used in labels. | string | `-` | no |
| enabled | Whether to create all resources | bool | `true` | no |
| kms_key_arn | ARN of the KMS key used for decrypting slack webhook url | string | `` | no |
| log_events | Boolean flag to enabled/disable logging of incoming events | bool | `false` | no |
| name | Name (unique identifier for app or service) | string | - | yes |
| namespace | Namespace (e.g. `cp` or `cloudposse`) | string | `` | no |
| slack_channel | The name of the channel in Slack for notifications | string | - | yes |
| slack_emoji | A custom emoji that will appear on Slack messages | string | `:aws:` | no |
| slack_username | The username that will appear on Slack messages | string | - | yes |
| slack_webhook_url | The URL of Slack webhook | string | - | yes |
| sns_topic_name | Name of the SNS topic to subscribe to. | string | `` | no |
| stage | Stage (e.g. `prod`, `dev`, `staging`) | string | `` | no |
| tags | Map of key-value pairs to use for tags. | map(string) | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| lambda_cloudwatch_log_group_arn | The Amazon Resource Name (ARN) specifying the log group |
| lambda_iam_role_arn | The ARN of the IAM role used by Lambda function |
| lambda_iam_role_name | The name of the IAM role used by Lambda function |
| notify_slack_lambda_function_arn | The ARN of the Lambda function |
| notify_slack_lambda_function_invoke_arn | The ARN to be used for invoking Lambda function from API Gateway |
| notify_slack_lambda_function_last_modified | The date Lambda function was last modified |
| notify_slack_lambda_function_name | The name of the Lambda function |
| notify_slack_lambda_function_version | Latest published version of your Lambda function |
| slack_topic_arn | The ARN of the SNS topic from which messages will be sent to Slack |

