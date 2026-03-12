output "arn" {
  description = "This output variable returns the Amazon Resource Name (ARN) of the key."
  value       = aws_kms_key.default.arn
}

output "key_id" {
  description = "This output variable returns the globally unique identifier for the key."
  value       = aws_kms_key.default.key_id
}

output "tags_all" {
  description = "This output variable returns a map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_kms_key.default.tags_all
}
