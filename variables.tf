variable "ses_receipt_rules" {
  description = <<EOT
Map of ses_receipt_rules, attributes below
Required:
    - name
    - rule_set_name
Optional:
    - after
    - enabled
    - recipients
    - region
    - scan_enabled
    - tls_policy
    - add_header_action (block):
        - header_name (required)
        - header_value (required)
        - position (required)
    - bounce_action (block):
        - message (required)
        - position (required)
        - sender (required)
        - smtp_reply_code (required)
        - status_code (optional)
        - topic_arn (optional)
    - lambda_action (block):
        - function_arn (required)
        - invocation_type (optional)
        - position (required)
        - topic_arn (optional)
    - s3_action (block):
        - bucket_name (required)
        - iam_role_arn (optional)
        - kms_key_arn (optional)
        - object_key_prefix (optional)
        - position (required)
        - topic_arn (optional)
    - sns_action (block):
        - encoding (optional)
        - position (required)
        - topic_arn (required)
    - stop_action (block):
        - position (required)
        - scope (required)
        - topic_arn (optional)
    - workmail_action (block):
        - organization_arn (required)
        - position (required)
        - topic_arn (optional)
EOT

  type = map(object({
    name          = string
    rule_set_name = string
    after         = optional(string)
    enabled       = optional(bool)
    recipients    = optional(set(string))
    region        = optional(string)
    scan_enabled  = optional(bool)
    tls_policy    = optional(string)
    add_header_action = optional(list(object({
      header_name  = string
      header_value = string
      position     = number
    })))
    bounce_action = optional(list(object({
      message         = string
      position        = number
      sender          = string
      smtp_reply_code = string
      status_code     = optional(string)
      topic_arn       = optional(string)
    })))
    lambda_action = optional(list(object({
      function_arn    = string
      invocation_type = optional(string)
      position        = number
      topic_arn       = optional(string)
    })))
    s3_action = optional(list(object({
      bucket_name       = string
      iam_role_arn      = optional(string)
      kms_key_arn       = optional(string)
      object_key_prefix = optional(string)
      position          = number
      topic_arn         = optional(string)
    })))
    sns_action = optional(list(object({
      encoding  = optional(string)
      position  = number
      topic_arn = string
    })))
    stop_action = optional(list(object({
      position  = number
      scope     = string
      topic_arn = optional(string)
    })))
    workmail_action = optional(list(object({
      organization_arn = string
      position         = number
      topic_arn        = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ses_receipt_rules : (
        v.add_header_action == null || alltrue([for item in v.add_header_action : ((length(item.header_name) >= 1 && length(item.header_name) <= 50) && (can(regex("^[0-9A-Za-z-]+$", item.header_name))))])
      )
    ])
    error_message = "all of: must be between 1 and 50 characters; must contain only alphanumeric and dash characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ses_receipt_rules : (
        v.add_header_action == null || alltrue([for item in v.add_header_action : (length(item.header_value) >= 0 && length(item.header_value) <= 2048)])
      )
    ])
    error_message = "must be between 0 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ses_receipt_rules : (
        v.s3_action == null || alltrue([for item in v.s3_action : (item.position >= 1)])
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 15 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

