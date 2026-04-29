resource "aws_kms_key_policy" "default" {
  key_id                               = var.key_id     
  policy                               = var.policy   
  bypass_policy_lockout_safety_check   = var.bypass_policy_lockout_safety_check
}
