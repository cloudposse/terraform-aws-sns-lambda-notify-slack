provider "aws" {
  region = var.region
}

module "notify_slack" {
  source            = "../.."
  context           = module.this.context
  create_sns_topic  = var.create_sns_topic
  slack_webhook_url = var.slack_webhook_url
  slack_channel     = var.slack_channel
  slack_username    = var.slack_username
}