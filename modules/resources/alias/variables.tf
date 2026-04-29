variable "name" {
  description = "(Optional) - This input variable contains the display name of the alias."
  type        = string
  default     = null
}

variable "target_key_id" {
  description = "(Required) - This input variable contains Identifier for the key that the alias points to (can be ARN or Key ID)."
  type        = string

  validation {
    condition = (
      length(var.target_key_id) > 0 &&
      (
        # Standard KMS Key ARN OR MRK ARN
        can(regex(
          "^arn:aws:kms:[a-z0-9-]+:[0-9]{12}:key/(mrk-[a-f0-9]+|[a-f0-9-]{36})$",
          var.target_key_id
        )) ||

        # Standard UUID Key ID
        can(regex("^[0-9a-fA-F-]{36}$", var.target_key_id)) ||

        # MRK Key ID (non-ARN)
        can(regex("^mrk-[a-f0-9]+$", var.target_key_id))
      )
    )

    error_message = "The target_key_id must be a valid KMS Key ARN or Key ID (UUID or MRK)."
  }
}
