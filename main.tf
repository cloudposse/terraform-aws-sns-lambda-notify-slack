module "default_label" {
  source     = "cloudposse/label/null"
  version    = "0.22.1"
  attributes = concat(module.this.attributes, ["default"])
  context    = module.this.context
}

module "notify_slack" {
  source               = "terraform-aws-modules/notify-slack/aws"
  version              = "4.12"
  create               = module.this.enabled
  create_sns_topic     = var.create_sns_topic
  lambda_function_name = module.default_label.id
  slack_webhook_url    = var.slack_webhook_url
  slack_channel        = var.slack_channel
  slack_username       = var.slack_username
  slack_emoji          = var.slack_emoji
  kms_key_arn          = var.kms_key_arn
  sns_topic_name       = var.sns_topic_name
}
