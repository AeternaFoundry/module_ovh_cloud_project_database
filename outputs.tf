output "cloud_project_databases_id" {
  description = "Map of id values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no id are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_project_databases_advanced_configuration" {
  description = "Map of advanced_configuration values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no advanced_configuration are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.advanced_configuration if v.advanced_configuration != null && length(v.advanced_configuration) > 0 }
}
output "cloud_project_databases_backup_regions" {
  description = "Map of backup_regions values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no backup_regions are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.backup_regions if v.backup_regions != null && length(v.backup_regions) > 0 }
}
output "cloud_project_databases_backup_time" {
  description = "Map of backup_time values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no backup_time are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.backup_time if v.backup_time != null && length(v.backup_time) > 0 }
}
output "cloud_project_databases_created_at" {
  description = "Map of created_at values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no created_at are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "cloud_project_databases_deletion_protection" {
  description = "Map of deletion_protection values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no deletion_protection are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.deletion_protection if v.deletion_protection != null }
}
output "cloud_project_databases_description" {
  description = "Map of description values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no description are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloud_project_databases_disk_size" {
  description = "Map of disk_size values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no disk_size are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.disk_size if v.disk_size != null }
}
output "cloud_project_databases_disk_type" {
  description = "Map of disk_type values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no disk_type are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.disk_type if v.disk_type != null && length(v.disk_type) > 0 }
}
output "cloud_project_databases_endpoints" {
  description = "Map of endpoints values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no endpoints are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "cloud_project_databases_engine" {
  description = "Map of engine values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no engine are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "cloud_project_databases_flavor" {
  description = "Map of flavor values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no flavor are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.flavor if v.flavor != null && length(v.flavor) > 0 }
}
output "cloud_project_databases_ip_restrictions" {
  description = "Map of ip_restrictions values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no ip_restrictions are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.ip_restrictions if v.ip_restrictions != null && length(v.ip_restrictions) > 0 }
}
output "cloud_project_databases_kafka_rest_api" {
  description = "Map of kafka_rest_api values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no kafka_rest_api are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.kafka_rest_api if v.kafka_rest_api != null }
}
output "cloud_project_databases_kafka_schema_registry" {
  description = "Map of kafka_schema_registry values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no kafka_schema_registry are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.kafka_schema_registry if v.kafka_schema_registry != null }
}
output "cloud_project_databases_maintenance_time" {
  description = "Map of maintenance_time values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no maintenance_time are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.maintenance_time if v.maintenance_time != null && length(v.maintenance_time) > 0 }
}
output "cloud_project_databases_network_type" {
  description = "Map of network_type values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no network_type are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.network_type if v.network_type != null && length(v.network_type) > 0 }
}
output "cloud_project_databases_nodes" {
  description = "Map of nodes values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no nodes are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.nodes if v.nodes != null && length(v.nodes) > 0 }
}
output "cloud_project_databases_opensearch_acls_enabled" {
  description = "Map of opensearch_acls_enabled values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no opensearch_acls_enabled are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.opensearch_acls_enabled if v.opensearch_acls_enabled != null }
}
output "cloud_project_databases_plan" {
  description = "Map of plan values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no plan are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.plan if v.plan != null && length(v.plan) > 0 }
}
output "cloud_project_databases_service_name" {
  description = "Map of service_name values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no service_name are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "cloud_project_databases_status" {
  description = "Map of status values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no status are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.status if v.status != null && length(v.status) > 0 }
}
output "cloud_project_databases_version" {
  description = "Map of version values across all cloud_project_databases, keyed the same as var.cloud_project_databases except keys with no version are omitted"
  value       = { for k, v in ovh_cloud_project_database.cloud_project_databases : k => v.version if v.version != null && length(v.version) > 0 }
}

