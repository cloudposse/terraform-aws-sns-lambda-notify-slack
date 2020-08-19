## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.0 |
| archive | ~> 1.3 |
| aws | ~> 2.0 |
| local | ~> 1.3 |
| null | ~> 2.1 |
| template | ~> 2.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| attributes | List of attributes to add to label. | `list(string)` | `[]` | no |
| create\_sns\_topic | Whether to create new SNS topic | `bool` | `true` | no |
| delimiter | The delimiter to be used in labels. | `string` | `"-"` | no |
| enabled | Whether to create all resources | `bool` | `true` | no |
| kms\_key\_arn | ARN of the KMS key used for decrypting slack webhook url | `string` | `""` | no |
| name | Name (unique identifier for app or service) | `string` | n/a | yes |
| namespace | Namespace (e.g. `cp` or `cloudposse`) | `string` | `""` | no |
| slack\_channel | The name of the channel in Slack for notifications | `string` | n/a | yes |
| slack\_emoji | A custom emoji that will appear on Slack messages | `string` | `":aws:"` | no |
| slack\_username | The username that will appear on Slack messages | `string` | n/a | yes |
| slack\_webhook\_url | The URL of Slack webhook | `string` | n/a | yes |
| sns\_topic\_name | Name of the SNS topic to subscribe to. | `string` | `""` | no |
| stage | Stage (e.g. `prod`, `dev`, `staging`) | `string` | `""` | no |
| tags | Map of key-value pairs to use for tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| lambda\_cloudwatch\_log\_group\_arn | The Amazon Resource Name (ARN) specifying the log group |
| lambda\_iam\_role\_arn | The ARN of the IAM role used by Lambda function |
| lambda\_iam\_role\_name | The name of the IAM role used by Lambda function |
| notify\_slack\_lambda\_function\_arn | The ARN of the Lambda function |
| notify\_slack\_lambda\_function\_invoke\_arn | The ARN to be used for invoking Lambda function from API Gateway |
| notify\_slack\_lambda\_function\_last\_modified | The date Lambda function was last modified |
| notify\_slack\_lambda\_function\_name | The name of the Lambda function |
| notify\_slack\_lambda\_function\_version | Latest published version of your Lambda function |
| slack\_topic\_arn | The ARN of the SNS topic from which messages will be sent to Slack |

