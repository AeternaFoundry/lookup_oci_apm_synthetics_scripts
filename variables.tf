variable "apm_synthetics_scripts_lookup" {
  description = <<EOT
Map of apm_synthetics_scripts_lookup, attributes below
Required:
    - apm_domain_id
Optional:
    - content_type
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    apm_domain_id = string
    content_type  = optional(string)
    display_name  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

