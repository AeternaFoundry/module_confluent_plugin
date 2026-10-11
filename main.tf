resource "confluent_plugin" "plugins" {
  for_each = var.plugins

  cloud            = each.value.cloud
  display_name     = each.value.display_name
  description      = each.value.description
  runtime_language = each.value.runtime_language

  environment {
    id = each.value.environment.id
  }
}

