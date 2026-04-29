output "arn" {
  description = "This output variable returns the Amazon Resource Name (ARN) of the key alias."
  value       = aws_kms_alias.default.arn
}

output "target_key_arn" {
  description = "This output variable returns the Amazon Resource Name (ARN) of the target key identifier."
  value       = aws_kms_alias.default.target_key_arn
}
