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

