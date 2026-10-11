output "apm_synthetics_scripts_lookup_id" {
  description = "Map of id values across all apm_synthetics_scripts_lookup, keyed the same as var.apm_synthetics_scripts_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_apm_synthetics_scripts.apm_synthetics_scripts_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_synthetics_scripts_lookup_apm_domain_id" {
  description = "Map of apm_domain_id values across all apm_synthetics_scripts_lookup, keyed the same as var.apm_synthetics_scripts_lookup except keys with no apm_domain_id are omitted"
  value       = { for k, v in data.oci_apm_synthetics_scripts.apm_synthetics_scripts_lookup : k => v.apm_domain_id if v.apm_domain_id != null && length(v.apm_domain_id) > 0 }
}
output "apm_synthetics_scripts_lookup_content_type" {
  description = "Map of content_type values across all apm_synthetics_scripts_lookup, keyed the same as var.apm_synthetics_scripts_lookup except keys with no content_type are omitted"
  value       = { for k, v in data.oci_apm_synthetics_scripts.apm_synthetics_scripts_lookup : k => v.content_type if v.content_type != null && length(v.content_type) > 0 }
}
output "apm_synthetics_scripts_lookup_display_name" {
  description = "Map of display_name values across all apm_synthetics_scripts_lookup, keyed the same as var.apm_synthetics_scripts_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_apm_synthetics_scripts.apm_synthetics_scripts_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apm_synthetics_scripts_lookup_filter" {
  description = "Map of filter values across all apm_synthetics_scripts_lookup, keyed the same as var.apm_synthetics_scripts_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_apm_synthetics_scripts.apm_synthetics_scripts_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "apm_synthetics_scripts_lookup_script_collection" {
  description = "Map of script_collection values across all apm_synthetics_scripts_lookup, keyed the same as var.apm_synthetics_scripts_lookup except keys with no script_collection are omitted"
  value       = { for k, v in data.oci_apm_synthetics_scripts.apm_synthetics_scripts_lookup : k => v.script_collection if v.script_collection != null && length(v.script_collection) > 0 }
}

