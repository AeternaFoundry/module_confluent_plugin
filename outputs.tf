output "plugins_id" {
  description = "Map of id values across all plugins, keyed the same as var.plugins except keys with no id are omitted"
  value       = { for k, v in confluent_plugin.plugins : k => v.id if v.id != null && length(v.id) > 0 }
}
output "plugins_api_version" {
  description = "Map of api_version values across all plugins, keyed the same as var.plugins except keys with no api_version are omitted"
  value       = { for k, v in confluent_plugin.plugins : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "plugins_cloud" {
  description = "Map of cloud values across all plugins, keyed the same as var.plugins except keys with no cloud are omitted"
  value       = { for k, v in confluent_plugin.plugins : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "plugins_description" {
  description = "Map of description values across all plugins, keyed the same as var.plugins except keys with no description are omitted"
  value       = { for k, v in confluent_plugin.plugins : k => v.description if v.description != null && length(v.description) > 0 }
}
output "plugins_display_name" {
  description = "Map of display_name values across all plugins, keyed the same as var.plugins except keys with no display_name are omitted"
  value       = { for k, v in confluent_plugin.plugins : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "plugins_environment" {
  description = "Map of environment values across all plugins, keyed the same as var.plugins except keys with no environment are omitted"
  value       = { for k, v in confluent_plugin.plugins : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "plugins_kind" {
  description = "Map of kind values across all plugins, keyed the same as var.plugins except keys with no kind are omitted"
  value       = { for k, v in confluent_plugin.plugins : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "plugins_runtime_language" {
  description = "Map of runtime_language values across all plugins, keyed the same as var.plugins except keys with no runtime_language are omitted"
  value       = { for k, v in confluent_plugin.plugins : k => v.runtime_language if v.runtime_language != null && length(v.runtime_language) > 0 }
}

