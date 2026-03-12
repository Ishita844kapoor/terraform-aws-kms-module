variable "filters" {
  description = "Set of filters to apply when fetching detailed information about the specified KMS Key with flexible key id input."
  type = list(object({
    name   = string
    values = list(string)
  }))
  default = []
}


