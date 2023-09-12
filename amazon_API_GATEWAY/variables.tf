variable "api_description" {
  default = ""
  type = string
}

variable "api_resource" {
  description = "parent resource => eg: /api/my/resource"
  type = object({
    id = string
    path = string
  })
}

variable "api_gateway_name" {
  default = "api gateway"
  type = string
}

variable "api_key_name" {
  type = string
}

variable "org" {
    description = "organisation specified by framework => will be passed through .tfvars file in the cli"
}

variable "group" {
    description = "organisation specified by framework => will be passed through .tfvars file in the cli"
}
variable "env" {
    description = "organisation specified by framework => will be passed through .tfvars file in the cli"
}

locals {
  api_name = "${var.org}-${var.env}-${var.group}-${var.api_gateway_name}"
}


