output "key_id" {
  description = "ID of the created KMS key"
  value       = module.kms.key_id
}

output "arn" {
  description = "ARN of the created KMS key"
  value       = module.kms.arn
}

output "tags" {
  description = "ARN of the created KMS key"
  value       = module.kms.tags
}

output "kms_alias_arn" {
  description = "ARN of the created KMS alias"
  value       = module.kms.kms_alias_arn
}



