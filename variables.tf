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

variable "vpc_subnet_ids" {
  description = "List of subnet ids when the notifying Lambda Function should run in the VPC. Usually private or intra subnets."
  type        = list(string)
  default     = null
}

variable "vpc_security_group_ids" {
  description = "List of security group ids when the notifying Lambda Function should run in the VPC."
  type        = list(string)
  default     = null
}

variable "lambda_source_path" {
  description = "The source path of the custom Lambda function"
  type        = string
  default     = null
}
