resource "aws_kms_alias" "default" {
  name           = var.name
  target_key_id  = var.target_key_id                                      
}
