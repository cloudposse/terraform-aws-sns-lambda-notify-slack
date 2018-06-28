variable "name" {
  type        = "string"
  description = "Name (unique identifier for app or service)"
}

variable "namespace" {
  type        = "string"
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "delimiter" {
  type        = "string"
  description = "The delimiter to be used in labels."
  default     = "-"
}

variable "stage" {
  type        = "string"
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "attributes" {
  type        = "list"
  description = "List of attributes to add to label."
  default     = []
}

variable "tags" {
  type        = "map"
  description = "Map of key-value pairs to use for tags."
  default     = {}
}

variable "enable" {
  description = "Whether to create all resources"
  default     = true
}

variable "create_sns_topic" {
  description = "Whether to create new SNS topic"
  default     = true
}

variable "create_with_kms_key" {
  description = "Whether to create resources with KMS encryption"
  default     = false
}

variable "slack_webhook_url" {
  description = "The URL of Slack webhook"
}

variable "slack_channel" {
  description = "The name of the channel in Slack for notifications"
}

variable "slack_username" {
  description = "The username that will appear on Slack messages"
}

variable "slack_emoji" {
  description = "A custom emoji that will appear on Slack messages"
  default     = ":aws:"
}

variable "kms_key_arn" {
  description = "ARN of the KMS key used for decrypting slack webhook url"
  default     = ""
}

variable "sns_topic_name" {
  type        = "string"
  description = "Name of the SNS topic to subscribe to."
  default     = ""
}
