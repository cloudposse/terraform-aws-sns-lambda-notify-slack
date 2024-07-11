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
  # Add MD5 hash of a timestamp attribute to avoid conflict for concurrent test runs, e.g.:
  # `Error: creating CloudWatch Logs Log Group (/aws/lambda/eg-test-sns-default):
  # ResourceAlreadyExistsException: The specified log group already exists.`
  attributes = [md5(timestamp())]
}