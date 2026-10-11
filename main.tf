data "oci_apm_synthetics_scripts" "apm_synthetics_scripts_lookup" {
  for_each = var.apm_synthetics_scripts_lookup

  apm_domain_id = each.value.apm_domain_id
  content_type  = each.value.content_type
  display_name  = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

