output "macie2_organization_configurations_auto_enable" {
  description = "Map of auto_enable values across all macie2_organization_configurations, keyed the same as var.macie2_organization_configurations"
  value       = { for k, v in aws_macie2_organization_configuration.macie2_organization_configurations : k => v.auto_enable if v.auto_enable != null }
}
output "macie2_organization_configurations_region" {
  description = "Map of region values across all macie2_organization_configurations, keyed the same as var.macie2_organization_configurations"
  value       = { for k, v in aws_macie2_organization_configuration.macie2_organization_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

