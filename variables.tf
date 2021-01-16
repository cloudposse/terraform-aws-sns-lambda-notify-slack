variable "create_sns_topic" {
  type        = bool
  description = "Whether to create new SNS topic"
  default     = true
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

variable "slack_emoji" {
  type        = string
  description = "A custom emoji that will appear on Slack messages"
  default     = ":aws:"
}

variable "kms_key_arn" {
  type        = string
  description = "ARN of the KMS key used for decrypting slack webhook url"
  default     = ""
}

variable "sns_topic_name" {
  type        = string
  description = "Name of the SNS topic to subscribe to."
  default     = ""
}
