output "key_id" {
  description = "ID of the created KMS key"
  value       = module.key.key_id
}

output "arn" {
  description = "ARN of the created KMS key"
  value       = module.key.arn
}

output "tags" {
  description = "ARN of the created KMS key"
  value       = module.key.tags_all
}

