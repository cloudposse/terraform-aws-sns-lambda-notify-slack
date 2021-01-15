module "default_label" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.17.0"
  name       = var.name
  namespace  = var.namespace
  stage      = var.stage
  delimiter  = var.delimiter
  attributes = var.attributes
  tags       = var.tags
}

module "notify_slack" {
  source  = "terraform-aws-modules/notify-slack/aws"
  version = "4.0"
  create               = var.enabled
  create_sns_topic     = var.create_sns_topic
  lambda_function_name = module.default_label.id
  slack_webhook_url    = var.slack_webhook_url
  slack_channel        = var.slack_channel
  slack_username       = var.slack_username
  slack_emoji          = var.slack_emoji
  kms_key_arn          = var.kms_key_arn
  sns_topic_name       = var.sns_topic_name
}
