variable "cloud_project_databases" {
  description = <<EOT
Map of cloud_project_databases, attributes below
Required:
    - engine
    - flavor
    - plan
    - service_name
    - version
    - nodes (block):
        - network_id (optional)
        - region (required)
        - subnet_id (optional)
Optional:
    - advanced_configuration
    - backup_regions
    - backup_time
    - deletion_protection
    - description
    - disk_size
    - kafka_rest_api
    - kafka_schema_registry
    - maintenance_time
    - opensearch_acls_enabled
    - ip_restrictions (block):
        - description (optional)
        - ip (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    engine                  = string
    flavor                  = string
    plan                    = string
    service_name            = string
    version                 = string
    advanced_configuration  = optional(map(string))
    backup_regions          = optional(list(string))
    backup_time             = optional(string)
    deletion_protection     = optional(bool)
    description             = optional(string)
    disk_size               = optional(number)
    kafka_rest_api          = optional(bool)
    kafka_schema_registry   = optional(bool)
    maintenance_time        = optional(string)
    opensearch_acls_enabled = optional(bool)
    nodes = list(object({
      network_id = optional(string)
      region     = string
      subnet_id  = optional(string)
    }))
    ip_restrictions = optional(list(object({
      description = optional(string)
      ip          = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_project_databases : (
        length(v.nodes) >= 1
      )
    ])
    error_message = "Each nodes list must contain at least 1 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

