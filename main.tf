module "default_label" {
  source     = "cloudposse/label/null"
  version    = "0.25.0"
  attributes = concat(module.this.attributes, ["default"])
  context    = module.this.context
}

module "notify_slack" {
  source                                 = "terraform-aws-modules/notify-slack/aws"
  version                                = "5.6"
  create                                 = module.this.enabled
  create_sns_topic                       = var.create_sns_topic
  lambda_function_name                   = module.default_label.id
  slack_webhook_url                      = var.slack_webhook_url
  slack_channel                          = var.slack_channel
  slack_username                         = var.slack_username
  slack_emoji                            = var.slack_emoji
  kms_key_arn                            = var.kms_key_arn
  sns_topic_name                         = var.sns_topic_name
  lambda_function_vpc_subnet_ids         = var.vpc_subnet_ids
  lambda_function_vpc_security_group_ids = var.vpc_security_group_ids
  lambda_source_path                     = var.lambda_source_path
  tags                                   = module.this.tags
}
