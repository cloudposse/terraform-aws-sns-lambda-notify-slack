# Normalize boolean variables for https://github.com/terraform-aws-modules/terraform-aws-notify-slack
locals {
  enabled             = "${var.enabled == "true" ? 1 : 0}"
  create_sns_topic    = "${var.create_sns_topic == "true" ? 1 : 0}"
  create_with_kms_key = "${var.create_with_kms_key == "true" ? 1 : 0}"
}

module "default_label" {
  source    = "git::https://github.com/cloudposse/terraform-terraform-label.git?ref=tags/0.1.3"
  name      = "${var.name}"
  namespace = "${var.namespace}"
  stage     = "${var.stage}"
}

module "notify_slack" {
  source               = "git::https://github.com/terraform-aws-modules/terraform-aws-notify-slack?ref=tags/v1.9.0"
  create               = "${local.enabled}"
  create_sns_topic     = "${local.create_sns_topic}"
  create_with_kms_key  = "${local.create_with_kms_key}"
  lambda_function_name = "${module.default_label.id}"
  slack_webhook_url    = "${var.slack_webhook_url}"
  slack_channel        = "${var.slack_channel}"
  slack_username       = "${var.slack_username}"
  slack_emoji          = "${var.slack_emoji}"
  kms_key_arn          = "${var.kms_key_arn}"
  sns_topic_name       = "${var.sns_topic_name}"
}
