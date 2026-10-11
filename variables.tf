variable "plugins" {
  description = <<EOT
Map of plugins, attributes below
Required:
    - cloud
    - display_name
    - environment (block):
        - id (required)
Optional:
    - description
    - runtime_language
EOT

  type = map(object({
    cloud            = string
    display_name     = string
    description      = optional(string)
    runtime_language = optional(string)
    environment = object({
      id = string
    })
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

