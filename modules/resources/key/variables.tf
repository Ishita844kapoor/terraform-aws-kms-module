variable "description" {
  description = "(Optional) - This input variable contains the description of the key as viewed in AWS console."
  type        = string
  default     = null
}

variable "key_usage" {
  description = "(Optional) - This input variable specifies the intended use of the key."
  type        = string
  default     = "ENCRYPT_DECRYPT"
}

variable "custom_key_store_id" {
  description = "(Optional) - This input variable contains ID of the KMS Custom Key Store (CloudHSM)."
  type        = string
  default     = null
}

variable "customer_master_key_spec" {
  description = "(Optional) - This input variable contains symmetric or asymmetric key spec."
  type        = string
  default     = "SYMMETRIC_DEFAULT"
}

variable "policy" {
  description = "(Optional) - This input variable contains valid key policy JSON document."
  type        = string
  default     = null
}

variable "bypass_policy_lockout_safety_check" {
  description = "(Optional) - This input variable contains bypass lockout safety check."
  type        = bool
  default     = false
}

variable "deletion_window_in_days" {
  description = "(Optional) Waiting period before key deletion (7–30)."
  type        = number
  default     = 30
}

variable "is_enabled" {
  description = "(Optional) - This input variable contains whether the key is enabled."
  type        = bool
  default     = true
}

variable "enable_key_rotation" {
  description = "(Optional) - This input variable contains whether key rotation is enabled."
  type        = bool
  default     = false
}

variable "rotation_period_in_days" {
  description = "(Optional) - This input variable contains custom rotation period in days (90–2560)."
  type        = number
  default     = null
}

variable "multi_region" {
  description = "(Optional) - This input variable contains whether the KMS key is multi-Region."
  type        = bool
  default     = false
}

variable "tags" {
  description = "(Optional) - This input variable contains a map of tags to assign to the key."
  type        = map(string)
  default     = {}
}

variable "xks_key_id" {
  description = "(Optional) - This input variable contains external key ID for an external key store."
  type        = string
  default     = null
}
