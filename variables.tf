variable "region" {
  description = "AWS regionnn for the example"
  type        = string
  default     = "us-east-1"
}

variable "replica_region" {
  description = "AWS region for the replica external KMS key"
  type        = string
  default     = "us-east-2"
}

variable "description" {
  type    = string
  default = "Example KMS key created from examples folder"
}

variable "key_usage" {
  type    = string
  default = "ENCRYPT_DECRYPT"
}

variable "custom_key_store_id" {
  type    = string
  default = null
}

variable "customer_master_key_spec" {
  type    = string
  default = "SYMMETRIC_DEFAULT"
}

variable "deletion_window_in_days" {
  type    = number
  default = 30
}

variable "is_enabled" {
  type    = bool
  default = true
}

variable "enable_key_rotation" {
  type    = bool
  default = true
}

variable "rotation_period_in_days" {
  type    = number
  default = null
}

variable "multi_region" {
  type    = bool
  default = true
}

variable "tags" {
  type = map(string)
  default = {
    Name = "anantacloud-key"
  }
}

variable "xks_key_id" {
  type    = string
  default = null
}

## Key-Policy ##
variable "policy" {
  description = "KMS key policy JSON"
  type        = string
  default     = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "EnableRootPermissions",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::292511304870:role/github-runner-ec2-iam-role"
      },
      "Action": "kms:*",
      "Resource": "*"
    }
  ]
}
EOF
}

variable "bypass_policy_lockout_safety_check" {
  description = "Whether to bypass KMS policy lockout safety check"
  type        = bool
  default     = false
}

