variable "account_profile" {
  type = string
}
variable "image_tag_mutability" {
  type = string
  description = "must be a mutable or immutable, if nothing then defaults to mutable"
}

variable "name" {
  type = string
  description = "name of repo"
}

variable "encryption_type" {
  type = string
  default = "AES256"
}

variable "kms_key" {
  type = string
  default = "null"
}

variable "scan_on_push" {
  type = bool
  default = false
}

variable "tags" {
  type = map(string)
}