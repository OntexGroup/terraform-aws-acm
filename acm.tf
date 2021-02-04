module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "~> v2.0"

  domain_name = var.domain_name
  zone_id     = var.zone_id

  subject_alternative_names = var.alternative_names
  wait_for_validation = var.wait_for_validation

  tags = var.custom_tags
}