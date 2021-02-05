
variable "create_certificate" {
  description = "Whether to create ACM certificate"
  type        = bool
  default     = true
}

variable "aws" {
  type    = any
  default = {}
}

variable "custom_tags" {
  type    = map
  default = {}
}

variable "domain_name" {
  description = "A domain name for which the certificate should be issued"
}

variable "zone_id" {
  description = "Route 53 Zone id"
}

variable "alternative_names" {
  description = "A list of domains that should be SANs in the issued certificate"
  type        = list
}

variable "wait_for_validation" {
  type    = bool
  default = true
}
