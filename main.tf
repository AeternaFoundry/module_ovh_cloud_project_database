resource "ovh_cloud_project_database" "cloud_project_databases" {
  for_each = var.cloud_project_databases

  engine                  = each.value.engine
  flavor                  = each.value.flavor
  plan                    = each.value.plan
  service_name            = each.value.service_name
  version                 = each.value.version
  advanced_configuration  = each.value.advanced_configuration
  backup_regions          = each.value.backup_regions
  backup_time             = each.value.backup_time
  deletion_protection     = each.value.deletion_protection
  description             = each.value.description
  disk_size               = each.value.disk_size
  kafka_rest_api          = each.value.kafka_rest_api
  kafka_schema_registry   = each.value.kafka_schema_registry
  maintenance_time        = each.value.maintenance_time
  opensearch_acls_enabled = each.value.opensearch_acls_enabled

  dynamic "nodes" {
    for_each = each.value.nodes
    content {
      network_id = nodes.value.network_id
      region     = nodes.value.region
      subnet_id  = nodes.value.subnet_id
    }
  }

  dynamic "ip_restrictions" {
    for_each = each.value.ip_restrictions != null ? each.value.ip_restrictions : []
    content {
      description = ip_restrictions.value.description
      ip          = ip_restrictions.value.ip
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

