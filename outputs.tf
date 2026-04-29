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

############################
# KMS Alias Outputs
############################
output "kms_alias_arn" {
  description = "ARN of the created KMS alias"
  value       = module.alias.arn
}

output "kms_alias_target_key_arn" {
  description = "Target key ARN associated with the alias"
  value       = module.alias.target_key_arn
}

