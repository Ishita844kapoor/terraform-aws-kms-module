variable "key_id" {
  description = "(Required) - This input variable contains the ID of the KMS Key to attach the policy."
  type        = string

  validation {
    condition = (
      length(var.key_id) > 0 &&
      (
        can(regex("^arn:aws:kms:", var.key_id)) ||          # ARN
        can(regex("^alias/", var.key_id)) ||                # Alias
        can(regex("^[a-f0-9-]{36}$", var.key_id))           # UUID Key ID
      )
    )

    error_message = "Invalid key_id. Must be a valid KMS Key ID (UUID), ARN, or alias (alias/...)."
  }
}

variable "policy" {
  description = "(Required) - This input variable contains a valid key policy JSON document."
  type        = string

  validation {
    condition     = can(jsondecode(var.policy))
    error_message = "The policy must be a valid JSON string."
  }
}

variable "bypass_policy_lockout_safety_check" {
  description = "(Optional) - This input variable contains whether to bypass the key policy lockout safety check."
  type        = bool
  default     = false
}
