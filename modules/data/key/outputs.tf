output "id" {
  description = "This output variable returns the globally unique identifier for the key."
  value       = data.aws_kms_key.default.id
}

output "arn" {
  description = "This output variable returns the ARN of the key."
  value       = data.aws_kms_key.default.arn
}

output "aws_account_id" {
  description = "This output variable returns the twelve-digit account ID of the AWS account that owns the key."
  value       = data.aws_kms_key.default.aws_account_id
}

output "cloud_hsm_cluster_id" {
  description = "This output variable returns the cluster ID of the AWS CloudHSM cluster that contains the key material for the KMS key."
  value       = data.aws_kms_key.default.cloud_hsm_cluster_id
}

output "creation_date" {
  description = "This output variable returns the date and time when the key was created."
  value       = data.aws_kms_key.default.creation_date
}

output "custom_key_store_id" {
  description = "This output variable returns a unique identifier for the custom key store that contains the KMS key."
  value       = data.aws_kms_key.default.custom_key_store_id
}

output "customer_master_key_spec" {
  description = "This output variable describes the type of key material in the KMS key."
  value       = data.aws_kms_key.default.customer_master_key_spec
}

output "key_state" {
  description = "This output variable returns the state of the key."
  value       = data.aws_kms_key.default.key_state
}

output "key_usage" {
  description = "This output variable specifies the intended use of the key."
  value       = data.aws_kms_key.default.key_usage
}

output "multi_region" {
  description = "This output variable indicates whether the KMS key is a multi-Region (true) or regional (false) key."
  value       = data.aws_kms_key.default.multi_region
}

output "origin" {
  description = "This output variable returns when this value is AWS_KMS, AWS KMS created the key material."
  value       = data.aws_kms_key.default.origin
}

output "pending_deletion_window_in_days" {
  description = "This output variable returns the waiting period before the primary key in a multi-Region key is deleted."
  value       = data.aws_kms_key.default.pending_deletion_window_in_days
}

output "valid_to" {
  description = "This output variable returns the time at which the imported key material expires."
  value       = data.aws_kms_key.default.valid_to
}

output "xks_key_configuration" {
  description = "This output variable returns Information about the external key that is associated with a KMS key in an external key store."
  value       = data.aws_kms_key.default.xks_key_configuration
}

output "multi_region_configuration" {
  description = "This output variable returns lists the primary and replica keys in same multi-Region key."
  value       = data.aws_kms_key.default.multi_region_configuration
}

output "multi_region_key_type" {
  description = "This output variable indicates whether the KMS key is a PRIMARY or REPLICA key."
  value       = data.aws_kms_key.default.multi_region_configuration[0].multi_region_key_type
}

output "primary_key" {
  description = "This output variable returns the primary key (ARN and Region)."
  value = {
    arn    = data.aws_kms_key.default.multi_region_configuration[0].primary_key[0].arn
    region = data.aws_kms_key.default.multi_region_configuration[0].primary_key[0].region
  }
}

output "replica_keys" {
  description = "This output variable returns the replica keys (ARN and Region)."
  value = [
    for rk in data.aws_kms_key.default.multi_region_configuration[0].replica_keys :
    {
      arn    = rk.arn
      region = rk.region
    }
  ]
}
