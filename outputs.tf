output "ses_receipt_rules_id" {
  description = "Map of id values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ses_receipt_rules_add_header_action" {
  description = "Map of add_header_action values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.add_header_action if v.add_header_action != null && length(v.add_header_action) > 0 }
}
output "ses_receipt_rules_after" {
  description = "Map of after values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.after if v.after != null && length(v.after) > 0 }
}
output "ses_receipt_rules_arn" {
  description = "Map of arn values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ses_receipt_rules_bounce_action" {
  description = "Map of bounce_action values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.bounce_action if v.bounce_action != null && length(v.bounce_action) > 0 }
}
output "ses_receipt_rules_enabled" {
  description = "Map of enabled values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.enabled if v.enabled != null }
}
output "ses_receipt_rules_lambda_action" {
  description = "Map of lambda_action values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.lambda_action if v.lambda_action != null && length(v.lambda_action) > 0 }
}
output "ses_receipt_rules_name" {
  description = "Map of name values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ses_receipt_rules_recipients" {
  description = "Map of recipients values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.recipients if v.recipients != null && length(v.recipients) > 0 }
}
output "ses_receipt_rules_region" {
  description = "Map of region values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ses_receipt_rules_rule_set_name" {
  description = "Map of rule_set_name values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.rule_set_name if v.rule_set_name != null && length(v.rule_set_name) > 0 }
}
output "ses_receipt_rules_s3_action" {
  description = "Map of s3_action values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.s3_action if v.s3_action != null && length(v.s3_action) > 0 }
}
output "ses_receipt_rules_scan_enabled" {
  description = "Map of scan_enabled values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.scan_enabled if v.scan_enabled != null }
}
output "ses_receipt_rules_sns_action" {
  description = "Map of sns_action values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.sns_action if v.sns_action != null && length(v.sns_action) > 0 }
}
output "ses_receipt_rules_stop_action" {
  description = "Map of stop_action values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.stop_action if v.stop_action != null && length(v.stop_action) > 0 }
}
output "ses_receipt_rules_tls_policy" {
  description = "Map of tls_policy values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.tls_policy if v.tls_policy != null && length(v.tls_policy) > 0 }
}
output "ses_receipt_rules_workmail_action" {
  description = "Map of workmail_action values across all ses_receipt_rules, keyed the same as var.ses_receipt_rules"
  value       = { for k, v in aws_ses_receipt_rule.ses_receipt_rules : k => v.workmail_action if v.workmail_action != null && length(v.workmail_action) > 0 }
}

