variable "filename" {
  description = "(Optional) Zip file containing lambda code. Default s3-encryption-payload.zip"
  default     = "s3-encryption-payload.zip"
}

variable "lambda_function_name" {
  description = "(Optional) Lambda name. Default s3-encryption"
  default     = "s3-encryption"
}

variable "lambda_s3_encryption_role" {
  description = "(Optional) Lambda IAM Role name. Default s3-encryption-role"
  default     = "s3-encryption-role"
}

variable "s3_encryption_log_policy" {
  description = "(Optional) Lambda log group name. Default s3-encryption-log"
  default     = "s3-encryption-log"
}

variable "access_s3_policy" {
  description = "(Optional) IAM Policy name for S3 policy. Default s3-encryption-s3-policy"
  default     = "s3-encryption-s3-policy"
}

variable "access_ssm_policy" {
  description = "(Optional) Access SSM IAM Policy name. Default s3-encryption-ssm-policy"
  default     = "s3-encryption-ssm-policy"
}

variable "protocol" {
  default     = "email"
  description = "SNS Protocol to use. email or email-json"
}

variable "stack_name" {
  description = "(Optional) Cloudformation stack name. Default s3-encryption-sns-cloudformation"
  default     = "s3-encryption-sns-cloudformation"
}

variable "ssm_s3_encryption_emails" {
  description = "(Optional) SSM Parameter name containing list of recipient's email address. Default default-destination-emails"
  default     = "default-destination-emails"
}

variable "display_name" {
  description = "(Optional) SSM parameter containing the source email address used to send emails. Default default-source-email"
  default     = "default-source-email"
}

variable "sns_iam_access" {
  description = "(Optional) SNS IAM Policy name. Default s3-encryption-sns-iam-access"
  default     = "s3-encryption-sns-iam-access"
}

variable "ssm_s3_list_parameter" {
  description = "(Optional) SSM Parameter name containing list of S3 buckets exempt from scanning. Default s3-encryption-exception-list"
  default     = "s3-encryption-exception-list"
}

variable "email_address" {
  default = "bla@cdd.com"
}
