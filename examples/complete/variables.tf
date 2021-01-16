variable "region" {
  type        = string
  description = "AWS Region for S3 bucket"
}

variable "create_sns_topic" {
  type        = bool
  description = "Whether to create new SNS topic"
}

variable "slack_webhook_url" {
  type        = string
  description = "The URL of Slack webhook"
}

variable "slack_channel" {
  type        = string
  description = "The name of the channel in Slack for notifications"
}

variable "slack_username" {
  type        = string
  description = "The username that will appear on Slack messages"
}
